package com.clay.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.util.CollectionUtils;

import com.clay.dal.mapper.blis.OrganizationMapper;
import com.clay.enums.AccountType;
import com.clay.exception.SOAPClientException;
import com.clay.service.AccountService;
import com.clay.soap.SOAPClient;
import com.clay.util.StringUtil;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class AccountServiceImpl implements AccountService {

	private static Logger logger = LoggerFactory.getLogger(AccountServiceImpl.class);

	@Autowired
	private SOAPClient soapClient;

	@Autowired
	private Configuration freemarkerConfig;
	
	@Autowired
	private OrganizationMapper organizationMapper;
	
	private final String CODS_SUCCESS = "//*[name()='createOrganizationResponse']/*[name()='Success']";

	@Override
	public String createAccount(String accountName, String organizationName, AccountType accountType) {
		String resultStatus = "Failed";
		String subType = "";
		String relationship = "Partner VAR";
		String supportBy = "WebEx";
		String implementBy = "Customer";
		String relationshipType = "BillPartner";
		Integer isWelEmailByWebEx = 1;
		String billPresentment = "";
		String accountTypeStr = "Direct";
		String contactType = "Primary Bill to";
		switch (accountType) {
		case BILLPARTNER:
			subType = "Partner VAR";
			supportBy = "Partner";
			implementBy = "Partner";
			billPresentment = "Consolidated";
			isWelEmailByWebEx = 0;
			accountTypeStr = "Partner";
			break;
		case PAYPARTNER:
			subType = "Partner Referral";
			relationship = "Partner Referral";
			relationshipType = "PayPartner";
			accountTypeStr = "Partner";
			contactType = "Primary Pay to";
			break;
		default:
			// Direct / Sell-thru
			subType = "WebEx Direct";
			billPresentment = "Consolidated";
			break;
		}

		try {
			// Get org info
			Map<String, Integer> orgAndCustomerIdsMap = organizationMapper.selectOrgAndCustomerIdsByOrgName(organizationName);
			String organizationId = String.valueOf(orgAndCustomerIdsMap.get("ORGANIZATIONUNITID"));
			String customerId = String.valueOf(orgAndCustomerIdsMap.get("CUSTOMERID"));
			if (StringUtil.isEmpty(organizationId) || "null".equalsIgnoreCase(organizationId)) {
				return resultStatus;
			}
			List<Integer> individualIdList = organizationMapper.getIndividualIdsByOrgId(orgAndCustomerIdsMap.get("ORGANIZATIONUNITID"));
			if (CollectionUtils.isEmpty(individualIdList)) {
				return resultStatus;
			} else if (individualIdList.size() < 2) {
				individualIdList.add(individualIdList.get(0));//using the same individual info
			}
			
			// Get needed Seq ids
			Document seqRequestDoc = new SAXReader()
					.read(Class.class.getResourceAsStream("/templates/getAccountInfoSequence.xml"));
			Document response = soapClient.sendSOAPMessage(seqRequestDoc.asXML());
			Map responseValues = paseSeqResponse(response);
						
			// Construct data
			Map<String, String> dataMap = new HashMap<String, String>();
			List addressIds = (List) responseValues.get("ADDRESS");
			List addressRefIds = (List) responseValues.get("ADDRESSREFERENCE");
			List individualIds = (List) responseValues.get("INDIVIDUAL");
			List contactIds = (List) responseValues.get("CONTACT");
			List agentassignments = (List) responseValues.get("AGENTASSIGNMENT");
			dataMap.put("organizationId", organizationId);
			dataMap.put("customerId", customerId);
			dataMap.put("billindIvidualId", String.valueOf(individualIdList.get(0)));
			dataMap.put("businessIvidualId", String.valueOf(individualIdList.get(1)));
			dataMap.put("accountId", String.valueOf(responseValues.get("ACCOUNT")));
			dataMap.put("partnerAttributeId", String.valueOf(responseValues.get("PARTNERATTRIBUTE")));
			dataMap.put("contractPortfolioId", String.valueOf(responseValues.get("CONTRACTPORTFOLIO")));
			dataMap.put("invoiceDefinitionId", String.valueOf(responseValues.get("INVOICEDEFINITION")));
			dataMap.put("billingAddressId", String.valueOf(addressIds.get(0)));
			dataMap.put("billingAddressRefId", String.valueOf(addressRefIds.get(0)));
			dataMap.put("shipToAddressId", String.valueOf(addressIds.get(1)));
			dataMap.put("shipToAddressRefId", String.valueOf(addressRefIds.get(1)));
			dataMap.put("accountAddressId", String.valueOf(addressIds.get(3)));
			dataMap.put("billindContactId", String.valueOf(contactIds.get(0)));
			dataMap.put("businessContactId", String.valueOf(contactIds.get(1)));
			dataMap.put("supportL1IndAddressId", String.valueOf(addressIds.get(4)));
			dataMap.put("supportL1IvidualId", String.valueOf(individualIds.get(2)));
			dataMap.put("supportL1ContactId", String.valueOf(contactIds.get(2)));
			dataMap.put("currentOwnerSRId", String.valueOf(agentassignments.get(0)));
			dataMap.put("csmSRId", String.valueOf(agentassignments.get(1)));
			dataMap.put("salesEngineerId", String.valueOf(agentassignments.get(2)));
			dataMap.put("collectorId", String.valueOf(agentassignments.get(4)));
			dataMap.put("accountName", accountName);
			dataMap.put("organizationName", organizationName);
			dataMap.put("subType", subType);
			dataMap.put("relationship", relationship);
			dataMap.put("supportBy", supportBy);
			dataMap.put("implementBy", implementBy);
			dataMap.put("relationshipType", relationshipType);
			dataMap.put("isWelEmailByWebEx", String.valueOf(isWelEmailByWebEx));
			dataMap.put("billPresentment", billPresentment);
			dataMap.put("accountTypeStr", accountTypeStr);
			dataMap.put("contactType", contactType);
			
			// Send request
			Template template = freemarkerConfig.getTemplate("createAccount.ftl", "UTF-8");
			String accountCreateReqXML = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
			logger.debug("requestXML: " + accountCreateReqXML);
			Document responseAccountXML = soapClient.sendSOAPMessage(accountCreateReqXML);
			
			// process response
			if (responseAccountXML != null) {
				Node orgIdNode = responseAccountXML.selectSingleNode(CODS_SUCCESS);
				if (orgIdNode != null) {
					resultStatus = "Success";
				}
			}
		} catch (DocumentException e) {
			logger.error("Create Account DocumentException: " + e);
		} catch (SOAPClientException e) {
			logger.error("Create Account SOAPClientException: " + e);
		} catch (TemplateNotFoundException e) {
			logger.error("Create Account TemplateNotFoundException: " + e);
		} catch (MalformedTemplateNameException e) {
			logger.error("Create Account MalformedTemplateNameException: " + e);
		} catch (ParseException e) {
			logger.error("Create Account ParseException: " + e);
		} catch (IOException e) {
			logger.error("Create Account IOException: " + e);
		} catch (TemplateException e) {
			logger.error("Create Account TemplateException: " + e);
		} catch (Exception e) {
			logger.error("Create Account Exception: " + e);
		}

		return resultStatus;
	}

	private Map paseSeqResponse(Document response) {
		String[] entityNames = { "ACCOUNT", "PARTNERATTRIBUTE", "ADDRESS", "ADDRESSREFERENCE", "INDIVIDUAL", "CONTACT",
				"AGENTASSIGNMENT", "CONTRACTPORTFOLIO", "INVOICEDEFINITION" };
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
