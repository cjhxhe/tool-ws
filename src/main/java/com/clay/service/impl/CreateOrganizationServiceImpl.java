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

import com.clay.exception.SOAPClientException;
import com.clay.service.CreateOrganizationService;
import com.clay.soap.SOAPClient;

@Service
public class CreateOrganizationServiceImpl implements CreateOrganizationService{
	
	private static Logger logger = LoggerFactory.getLogger(CreateOrganizationServiceImpl.class);
	
	@Autowired
	private SOAPClient soapClient;
	
	private final String CODS_ORGNAME = "//*[name()='OrgName']";
	private final String CODS_ORGID = "//*[name()='OrgID']";
	private final String CODS_SYSDBDATE = "//*[name()='SysDBDate']";
	private final String CODS_CUSTOMERID = "//*[name()='CustomerID']";
	
	private final String CODS_ORGADDRESS = "//*[name()='OrganizationForm']/*[name()='MainAddressID']";
	private final String CODS_ADDRESS1 = "//*[name()='Addresses']/*[name()='BLIS_ADDRESS']/*[name()='ADDRESSID']";
	private final String CODS_ADDRESS2 = "//*[name()='AddressTypes']/*[name()='BLIS_ADDRESSREFERENCE']/*[name()='ADDRESSID']";
	
	private final String CODS_INDIVIDUALADDRESS = "//*[name()='INDIVIDUALADDRESS']/*[name()='BLIS_ADDRESS']/*[name()='ADDRESSID']";
	
	private final String CODS_ADDRESSREFERENCEID = "//*[name()='AddressTypes']/*[name()='BLIS_ADDRESSREFERENCE']/*[name()='ADDRESSREFERENCEID']";
	
	private final String CODS_INDIVIDUALID1 = "//*[name()='BLIS_INDIVIDUAL']/*[name()='INDIVIDUALID']";
	private final String CODS_INDIVIDUALID2 = "//*[name()='INDIVIDUALADDRESS']/*[name()='BLIS_ADDRESS']/*[name()='ENTITYKEYID']";
	private final String CODS_INDIVIDUALID3 = "//*[name()='BLIS_CONTACT']/*[name()='INDIVIDUALID']";
	
	private final String CODS_CONTACTID = "//*[name()='BLIS_CONTACT']/*[name()='CONTACTID']";
	
	private final String CODS_AGENTASSIGNMENT = "//*[name()='SRAgentType']/*[name()='AgentAssignmentID']";
	
	private final String CODS_DATA = "//*[name()='data']";
	private final String CODS_SUCCESS = "//*[name()='createOrganizationResponse']/*[name()='Success']";

	@Override
	public void createOrganization(String organizationName) {
		try {
			Document seqRequestDoc = new SAXReader().read(Class.class.getResourceAsStream("/templates/getOrgInfoSequence.xml"));
			Document response = soapClient.sendSOAPMessage(seqRequestDoc.asXML());
			Map responseValues = paseSeqResponse(response);
			
			Document orgRequestDoc = new SAXReader().read(Class.class.getResourceAsStream("/templates/createOrganization.xml"));
			Document orgRequestTemp = (Document) orgRequestDoc.clone();
			
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
			
			orgRequestTemp.selectSingleNode(CODS_ORGNAME).setText(organizationName);
			orgRequestTemp.selectSingleNode(CODS_ORGID).setText((String)responseValues.get("ORGANIZATION"));
			orgRequestTemp.selectSingleNode(CODS_SYSDBDATE).setText(sdf.format(new Date()));
			
			orgRequestTemp.selectSingleNode(CODS_CUSTOMERID).setText((String)responseValues.get("CUSTOMER"));
			
			List addressIds = (List) responseValues.get("ADDRESS");
			String orgAddressId = (String) addressIds.get(0);
			orgRequestTemp.selectSingleNode(CODS_ORGADDRESS).setText(orgAddressId);
			orgRequestTemp.selectSingleNode(CODS_ADDRESS1).setText(orgAddressId);
			orgRequestTemp.selectSingleNode(CODS_ADDRESS2).setText(orgAddressId);
			
			List node_individualAddress = orgRequestTemp.selectNodes(CODS_INDIVIDUALADDRESS);
			
			for(int i=0;i<node_individualAddress.size()&&i+1<addressIds.size();i++){
				((Node)node_individualAddress.get(i)).setText((String)addressIds.get(i+1));
			}
			
			orgRequestTemp.selectSingleNode(CODS_ADDRESSREFERENCEID).setText((String) responseValues.get("ADDRESSREFERENCE"));
			
			List individualIds = (List) responseValues.get("INDIVIDUAL");
			List node_individuals1 = orgRequestTemp.selectNodes(CODS_INDIVIDUALID1);
			List node_individuals2 = orgRequestTemp.selectNodes(CODS_INDIVIDUALID2);
			List node_individuals3 = orgRequestTemp.selectNodes(CODS_INDIVIDUALID3);
			
			for(int i=0;i<node_individuals1.size()&&i<individualIds.size();i++){
				((Node)node_individuals1.get(i)).setText((String)individualIds.get(i));
				((Node)node_individuals2.get(i)).setText((String)individualIds.get(i));
				((Node)node_individuals3.get(i)).setText((String)individualIds.get(i));
			}
			
			List contactIds = (List) responseValues.get("CONTACT");
			List node_contactIds = orgRequestTemp.selectNodes(CODS_CONTACTID);
			for(int i=0;i<node_contactIds.size()&&i<contactIds.size();i++){
				((Node)node_contactIds.get(i)).setText((String)contactIds.get(i));
			}
			
			List agentassignments = (List) responseValues.get("AGENTASSIGNMENT");
			List node_agentassignments = orgRequestTemp.selectNodes(CODS_AGENTASSIGNMENT);
			for(int i=0;i<node_agentassignments.size()&&i<agentassignments.size();i++){
				((Node)node_agentassignments.get(i)).setText((String)agentassignments.get(i));
			}
			
			logger.debug("requestXML:"+orgRequestTemp.asXML());
			Document responseOrgXML = soapClient.sendSOAPMessage(orgRequestTemp.asXML());
			
			if (responseOrgXML != null) {
				Node orgIdNode = responseOrgXML.selectSingleNode(CODS_SUCCESS);
				if (orgIdNode != null) {
					//orgBeanHelper.setCreateFlag(true);
					/* send soap to the boss */
					String stringData = this.transformCustomerForm(orgRequestTemp.asXML());
					
					Document blisToBossSOPA = new SAXReader().read(Class.class.getResourceAsStream("/templates/blisToBossSoap.xml"));
					Document blisToBossSOPATemp = (Document) blisToBossSOPA.clone();
					
					Element dataEle = (Element) blisToBossSOPATemp.selectSingleNode(CODS_DATA);
					Document stringDataDoc = DocumentHelper.parseText(stringData);
					dataEle.add(stringDataDoc.getRootElement());
					
					soapClient.sendSOAPMessage(blisToBossSOPATemp.asXML());
				}
			}
			
		} catch (DocumentException e) {
			logger.error("read soap template file failed!");
		}catch (SOAPClientException e) {
			logger.error("send soap error:"+e.getMessage());
		}
		
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
			// strCustomerNode = strCustomerNode.replaceFirst("<?xml
			// version=\"1.0\" encoding=\"UTF-8\"?>","");
			// Brian change the replace method
			int indexOrg = strCustomerNode.indexOf("<Organization>");
			strCustomerNode = strCustomerNode.substring(indexOrg);
			// End
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
