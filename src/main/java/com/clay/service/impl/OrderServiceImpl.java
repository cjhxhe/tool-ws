package com.clay.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.util.CollectionUtils;

import com.clay.dal.mapper.blis.AccountMapper;
import com.clay.dal.mapper.blis.ContactMapper;
import com.clay.dal.mapper.blis.OrderMapper;
import com.clay.dal.mapper.blis.OrganizationMapper;
import com.clay.enums.OrderType;
import com.clay.service.OrderService;
import com.clay.soap.SOAPClient;
import com.clay.util.StringUtil;

import freemarker.template.Configuration;
import freemarker.template.Template;

@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class OrderServiceImpl implements OrderService {

	private static Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);

	@Autowired
	private SOAPClient soapClient;

	@Autowired
	private Configuration freemarkerConfig;

	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private AccountMapper accountMapper;
	
	@Autowired
	private OrganizationMapper organizationMapper;
	
	@Autowired
	private ContactMapper contactMapper;
	
	private final String CODS_SUCCESS = "//*[name()='createOrderResponse']/*[name()='Success']";
	
	private final String CODS_FAILURE_STRING = ".//SOAP:faultstring";

	@Override
	public String createOrder(String accountName, OrderType orderType) {
		String result = "Failed";
		Map<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("accountName", accountName);
		dataMap.put("orderType", orderType.getName());
		dataMap.put("offerCode", "MC Named Hosts Pro USD");
		dataMap.put("webexUrl", "claytoolwssite-" + StringUtil.generateRandomString(10) + ".qa.webex.com");
		try {
			
			//TODO validation
			preValidation(dataMap);
			
			generateSeqId(dataMap);
			setOrderContext(dataMap, orderType);
			setOrderInfoByAccID(dataMap);
			setTermInfo(dataMap);
			setHighdealInfo(dataMap);
			setOfferInstance(dataMap);
			generateSubscriptionCode(dataMap);
			//TODO trial run
			trialRun(dataMap);
			processContact(dataMap);
			
			Template template = freemarkerConfig.getTemplate("order/createOrder.ftl", "UTF-8");
			String orderCreateReqXML = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
			logger.debug("requestXML: " + orderCreateReqXML);
			Document responseOrderXML = soapClient.sendSOAPMessage(orderCreateReqXML);

			// process response
			if (responseOrderXML != null) {
				Node orderSuccessNode = responseOrderXML.selectSingleNode(CODS_SUCCESS);
				if (orderSuccessNode != null) {
					result = "Order Created Successfully, Order ID: " + dataMap.get("orderId");
				} else {
					Node failureStrNode = responseOrderXML.selectSingleNode(CODS_FAILURE_STRING);
					result = null == failureStrNode ? "Create Order Failure." : failureStrNode.getText();
				}
			}
		} catch (Exception e) {
			logger.error("createOrder : " + e);
			result = "Create Order Exception: \n" + e.getMessage();
		}
		
		return result;
	}

	private void preValidation(Map<String, String> dataMap) throws Exception {
		// TODO
	}
	
	private void generateSeqId(Map<String, String> dataMap) throws Exception {
		Document seqRequestDoc = new SAXReader()
				.read(Class.class.getResourceAsStream("/templates/getOrderInfoSequence.xml"));
		Document response = soapClient.sendSOAPMessage(seqRequestDoc.asXML());
		Map responseValues = paseSeqResponse(response);
		if (null != responseValues && !responseValues.isEmpty()) {
			dataMap.put("orderId", String.valueOf(responseValues.get("Order")));
			dataMap.put("orderServiceId", String.valueOf(responseValues.get("orderservice")));
			dataMap.put("contactId", String.valueOf(responseValues.get("contact")));
			dataMap.put("blisProvisionsettingId", String.valueOf(responseValues.get("PROVISIONSETTING")));
			dataMap.put("blisProvisionticketId", String.valueOf(responseValues.get("PROVISIONTICKET")));
			dataMap.put("blisSiteId", String.valueOf(responseValues.get("SITE")));
			List agentassignments = (List) responseValues.get("AGENTASSIGNMENT");
			dataMap.put("primarySRAgentAssignmentId", String.valueOf(agentassignments.get(0)));
			dataMap.put("csmSRAgentAssignmentId", String.valueOf(agentassignments.get(1)));
		}
	}
	
	private void setTermInfo(Map<String, String> dataMap) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar serviceStartDateCalendar = Calendar.getInstance();
		serviceStartDateCalendar.add(Calendar.DATE, 2);
		dataMap.put("curDate", sdf.format(new Date()));
		dataMap.put("contractSignDate", sdf.format(new Date()));
		dataMap.put("serviceStartDate", sdf.format(serviceStartDateCalendar.getTime()));
		dataMap.put("expSvrStartDate", dataMap.get("serviceStartDate"));
		dataMap.put("initialTerm", "1");
		dataMap.put("renewalTerm", "1");
		dataMap.put("interestRate", "1.5");
		dataMap.put("suspendDate", "10");
		dataMap.put("terminatNoticeDate", "30");
		dataMap.put("terminatDate", "15");
	}
	
	private void setOrderInfoByAccID(Map<String, String> dataMap) {
		Map<String, Integer> customerAttrMap = organizationMapper.getCustomerAttByOrgID(dataMap.get("orgId"));
		List<Map<String, String>> primarySRAndCSMList = accountMapper.getCMNameByPSRID(dataMap.get("accountId"));
		dataMap.put("customerAttributeId", String.valueOf(customerAttrMap.get("CUSTOMERATTRIBUTEID")));
		if (!CollectionUtils.isEmpty(primarySRAndCSMList)) {
			for (Map<String, String> map : primarySRAndCSMList) {
				String assignmentTypeId = String.valueOf(map.get("ASSIGNMENTTYPEID"));
				if ("1".equals(assignmentTypeId)) {
					dataMap.put("primarySRAgentId", String.valueOf(map.get("AGENTID")));
					dataMap.put("primarySRAssignmentValue1", "100");//rely on order type
					dataMap.put("primarySRAssignmentValue2", String.valueOf(map.get("PRIMARYTEAMID")));
					dataMap.put("primarySRAgentName", map.get("FIRSTNAME") + " " + map.get("LASTNAME"));
				} else if ("2".equals(assignmentTypeId)) {
					dataMap.put("csmSRAgentId", String.valueOf(map.get("AGENTID")));
					dataMap.put("csmSRAssignmentValue1", "0");//rely on order type
					dataMap.put("csmSRAssignmentValue2", String.valueOf(map.get("PRIMARYTEAMID")));
					dataMap.put("csmSRAgentName", map.get("FIRSTNAME") + " " + map.get("LASTNAME"));
				}
			}
		}
	}
	
	private void setOfferInstance(Map<String, String> dataMap) throws Exception {
		// Send request
		Template template = freemarkerConfig.getTemplate("order/getOfferInstance.ftl", "UTF-8");
		String generateSubscriptionCodeReqXML = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
		logger.debug("getOfferInstanceReqXML: " + generateSubscriptionCodeReqXML);
		Document responseOfferInstanceXML = soapClient.sendSOAPMessage(generateSubscriptionCodeReqXML);
		Element rootXML = responseOfferInstanceXML.getRootElement();
		// process response
		if (rootXML != null) {
			dataMap.put("offerInstance", rootXML.asXML());
			Element additional = (Element) rootXML.selectSingleNode(".//additionalInformation[@name='SERVICE_TYPE']");
			if (null != additional) {
				dataMap.put("serviceType", additional.attributeValue("value"));
			}
		}
	}
	
	private void generateSubscriptionCode(Map<String, String> dataMap) throws Exception {
		// Send request
		Template template = freemarkerConfig.getTemplate("order/getNewSubscriptionCode.ftl", "UTF-8");
		String generateSubscriptionCodeReqXML = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
		logger.debug("generateSubscriptionCodeReqXML: " + generateSubscriptionCodeReqXML);
		Document generateSubscriptionCodeRespXML = soapClient.sendSOAPMessage(generateSubscriptionCodeReqXML);

		// process response
		if (generateSubscriptionCodeRespXML != null) {
			String subscriptionCode = StringUtil.getNodeTextAsStringByPattern(generateSubscriptionCodeRespXML,
					".//SubscriptionCode");
			dataMap.put("subscriptionCode", subscriptionCode);
		}
	}

	private void trialRun(Map<String, String> dataMap) throws Exception {
		// TODO
	}
	
	private void setOrderContext(Map<String, String> dataMap, OrderType orderType) {
		Map<String, String> retMap = null;
		switch (orderType) {
		case NEW:
		case CHANGEADD:
			retMap = orderMapper.getOrderContext4CreateOrder(dataMap.get("accountName"));
			break;
		default:
			retMap = orderMapper.getOrderContext4ChangeOrder(dataMap.get("accountName"), dataMap.get("serviceId"));
			break;
		}
		if (null != retMap && !retMap.isEmpty()) {
			dataMap.put("accountType", retMap.get("ACCOUNTTYPE"));
			dataMap.put("orgId", String.valueOf(retMap.get("ORGID")));
			dataMap.put("organizationName", String.valueOf(retMap.get("ORGNAME")));
			dataMap.put("accountId", String.valueOf(retMap.get("ACCOUNTID")));
			dataMap.put("channelId", String.valueOf(retMap.get("CHANNELID")));
			dataMap.put("upoId", String.valueOf(retMap.get("UPOID")));
			dataMap.put("upoName", retMap.get("UPONAME"));
			dataMap.put("serviceSnapShotId", String.valueOf(retMap.get("SERVICESNAPSHOTID")));
			dataMap.put("accountSubType", retMap.get("ACCOUNTSUBTYPE"));
		}
	}

	private void setHighdealInfo(Map<String, String> dataMap) {
		Map<String, String> retMap = orderMapper.getOrderAddInfoInCreateByAccID(dataMap.get("accountId"));
		if (null != retMap && !retMap.isEmpty()) {
			dataMap.put("hdpartyId", String.valueOf(retMap.get("HDPARTYID")));
			dataMap.put("invoicedefinitionId", String.valueOf(retMap.get("INVOICEDEFINITIONID")));
			dataMap.put("serviceProviderId", String.valueOf(retMap.get("SERVICEPROVIDERID")));
			dataMap.put("serviceProviderName", retMap.get("SERVICEPROVIDERNAME"));
			dataMap.put("accountSubType", retMap.get("SUBTYPE"));
			dataMap.put("currency", retMap.get("CURRENCYCODE"));
			dataMap.put("creditor", "WebEx " + retMap.get("CURRENCYCODE"));
		}
	}
	
	private void processContact(Map<String, String> dataMap) throws Exception {
		List<Integer> individualIds = organizationMapper.getIndividualIdsByOrgId(Integer.parseInt(dataMap.get("orgId")));
		if (!CollectionUtils.isEmpty(individualIds)) {
			dataMap.put("implContactIndividualId", String.valueOf(individualIds.get(0)));
			List<Integer> addressIds = contactMapper.getAddressIdsByOrgId(individualIds.get(0));
			if (!CollectionUtils.isEmpty(addressIds)) {
				dataMap.put("implContactAddressId", String.valueOf(addressIds.get(0)));
			}
		}
		
		// Send request
		Template template = freemarkerConfig.getTemplate("order/saveContact_cpcre.ftl", "UTF-8");
		String saveContactReqXML = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
		logger.debug("saveContactReqXML: " + saveContactReqXML);
		Document saveContactRespXML = soapClient.sendSOAPMessage(saveContactReqXML);
		logger.debug("saveContactRespXML" + saveContactRespXML);
	}
	
	private Map paseSeqResponse(Document response) {
		String[] entityNames = { "Order", "orderservice", "contact", "PROVISIONSETTING", "PROVISIONTICKET", "SITE", "AGENTASSIGNMENT" };
		String entityName = null;
		Map values = null;
		if (response != null) {
			Node node = null;
			final int count = entityNames.length;
			values = new HashMap(count);
			for (int i = 0; i < count; i++) {
				entityName = entityNames[i];
				List nodes = response.selectNodes("//*[name()='" + entityName + "']");
				if (nodes != null && nodes.size() > 0) {
					int nodesCount = nodes.size();
					if (nodesCount == 1) {
						node = (Node) nodes.get(0);
						if (node != null)
							values.put(entityName, node.getText());
					} else {
						final List list = new ArrayList();
						for (int j = 0; j < nodesCount; j++) {
							node = (Node) nodes.get(j);
							if (node != null)
								list.add(node.getText());
						}
						values.put(entityName, list);
					}
				}
			}
		}
		return values;
	}
}
