package com.clay.service.impl;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.clay.exception.SOAPClientException;
import com.clay.service.OrganizationService;
import com.clay.soap.SOAPClient;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class OrganizationServiceImpl implements OrganizationService{
	
	private static Logger logger = LoggerFactory.getLogger(OrganizationServiceImpl.class);
	
	@Autowired
	private SOAPClient soapClient;
	
	@Autowired
	private Configuration freemarkerConfig;
	
	private final String CODS_DATA = "//*[name()='data']";
	private final String CODS_SUCCESS = "//*[name()='createOrganizationResponse']/*[name()='Success']";
	private final String CODS_INTER_SUCCESS = "//*[name()='getDataIntegrationResponse']/*[name()='Success']";

	@Override
	public String createOrganization(String organizationName) {
		String resultStatus = "Failed";
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
		try {
			// Get needed Seq ids
			Document seqRequestDoc = new SAXReader()
					.read(Class.class.getResourceAsStream("/templates/getOrgInfoSequence.xml"));
			Document response = soapClient.sendSOAPMessage(seqRequestDoc.asXML());
			Map responseValues = paseSeqResponse(response);

			// Create org request xml and send via soap
			Map<String, String> dataMap = new HashMap<String, String>();
			List addressIds = (List) responseValues.get("ADDRESS");
			List individualIds = (List) responseValues.get("INDIVIDUAL");
			List contactIds = (List) responseValues.get("CONTACT");
			List agentassignments = (List) responseValues.get("AGENTASSIGNMENT");
			dataMap.put("organizationName", organizationName);
			dataMap.put("orgId", String.valueOf(responseValues.get("ORGANIZATION")));
			dataMap.put("sysDate", sdf.format(new Date()));
			dataMap.put("customerId", String.valueOf(responseValues.get("CUSTOMER")));
			dataMap.put("mainAddressId", String.valueOf(addressIds.get(0)));
			dataMap.put("indAddressId1", String.valueOf(addressIds.get(1)));
			dataMap.put("indAddressId2", String.valueOf(addressIds.get(2)));
			dataMap.put("addressRefId", String.valueOf(responseValues.get("ADDRESSREFERENCE")));
			dataMap.put("individualId1", String.valueOf(individualIds.get(0)));
			dataMap.put("individualId2", String.valueOf(individualIds.get(1)));
			dataMap.put("contactId1", String.valueOf(contactIds.get(0)));
			dataMap.put("contactId2", String.valueOf(contactIds.get(1)));
			dataMap.put("agentAssignId1", String.valueOf(agentassignments.get(0)));
			dataMap.put("agentAssignId2", String.valueOf(agentassignments.get(1)));
			dataMap.put("agentAssignId3", String.valueOf(agentassignments.get(2)));

			Template template = freemarkerConfig.getTemplate("createOrganization.ftl", "UTF-8");
			String orgCreateReqXML = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
			logger.debug("requestXML: " + orgCreateReqXML);
			Document responseOrgXML = soapClient.sendSOAPMessage(orgCreateReqXML);

			// process response
			if (responseOrgXML != null) {
				Node orgIdNode = responseOrgXML.selectSingleNode(CODS_SUCCESS);
				if (orgIdNode != null) {
					/* send soap to the boss */
					String stringData = this.transformCustomerForm(orgCreateReqXML);
					Document blisToBossSOPA = new SAXReader()
							.read(Class.class.getResourceAsStream("/templates/blisToBossSoap.xml"));
					Document blisToBossSOPATemp = (Document) blisToBossSOPA.clone();
					Element dataEle = (Element) blisToBossSOPATemp.selectSingleNode(CODS_DATA);
					Document stringDataDoc = DocumentHelper.parseText(stringData);
					dataEle.add(stringDataDoc.getRootElement());
					Document blisToBossResp = soapClient.sendSOAPMessage(blisToBossSOPATemp.asXML());
					if (blisToBossResp.selectSingleNode(CODS_INTER_SUCCESS) != null) {
						resultStatus = "Success";
					}
				}
			}
		} catch (DocumentException e) {
			logger.error("read soap template file failed!");
		} catch (SOAPClientException e) {
			logger.error("send soap error:" + e.getMessage());
		} catch (TemplateNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedTemplateNameException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (TemplateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultStatus;
	}
	
	private Map paseSeqResponse(Document response){
		String[] entityNames = {"ORGANIZATION","CUSTOMER","ADDRESS","ADDRESSREFERENCE","INDIVIDUAL","CONTACT","AGENTASSIGNMENT" };
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
	
	private String transformCustomerForm(String requestSOAP) {
		StringWriter writer = new StringWriter();
		StreamResult result = new StreamResult(writer);
		String strCustomerNode = "";
		StringReader reader = null;
		try {
			Document doc = DocumentHelper.parseText(requestSOAP);
			Node node = doc.selectSingleNode("//Organization");
			Source source = new StreamSource(Class.class.getResourceAsStream("/blis2boss_customer.xsl"));
			Transformer transformer = TransformerFactory.newInstance()
					.newTransformer(source);
			reader = new StringReader(node.asXML());
			Source xmlSource = new StreamSource(reader);
			transformer.transform(xmlSource, result);
			strCustomerNode = writer.toString();
			int indexOrg = strCustomerNode.indexOf("<Organization>");
			strCustomerNode = strCustomerNode.substring(indexOrg);
			logger.debug("after transform:" + strCustomerNode);
		} catch (TransformerConfigurationException e) {
			logger.error("transformCustomerForm  error:" + e.toString());
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			logger.error("transformCustomerForm  error:" + e.toString());
			throw e;
		} catch (TransformerException e) {
			logger.error("transformCustomerForm  error:" + e.toString());
			e.printStackTrace();
		} catch (Exception e) {
			logger.error("transformCustomerForm Exception:" + e.toString());
			e.printStackTrace();
		} finally {
			try {
				if(writer != null){
					writer.close();
				}
				if(reader != null){
					reader.close();
				}
			} catch (IOException e) {
				logger.error("Close IO exception");
				e.printStackTrace();
			}
		}
		return strCustomerNode;
	}

}
