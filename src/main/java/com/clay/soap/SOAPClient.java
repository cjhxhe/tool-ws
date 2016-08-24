package com.clay.soap;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.clay.exception.SOAPClientException;

@Component
public class SOAPClient {

	@Value("${BLiS_ESB.ServerHost}")
	private String server;

	@Value("${BLiS_ESB.UserName}")
	private String userName;

	@Value("${BLiS_ESB.Password}")
	private String password;

	@Value("${BLiS_ESB.Timeout}")
	private String timeout;

	@Value("${BLiS_ESB.Gateway}")
	private String gateway;

	@Value("${BLiS_ESB.Authenticate}")
	private String authenticate;

	private String sessionID;

	private static Logger logger = LoggerFactory.getLogger(SOAPClient.class);

	public Document sendRequestWithActiveSession(String request) throws SOAPClientException {
		Document response = sendSOAPMessage(request);
		if (null != response.selectSingleNode(".//SOAP:Fault/SOAP:faultcode") && "Client.NotAuthenticated"
				.equalsIgnoreCase(response.selectSingleNode(".//SOAP:Fault/SOAP:faultcode").getText())) {
			sessionID = authenticate();
			response = sendSOAPMessage(request);
		}
		return response;
	}

	public Document sendSOAPMessage(String request) throws SOAPClientException {
		logger.debug(request);
		Document response = null;
		try {
			if (null == sessionID) {
				sessionID = authenticate();
			}
			URL serviceURL = new URL(
					"http://" + server + gateway + "?" + "wcp-session=" + sessionID + "&" + "timeout=" + timeout);
			logger.debug(serviceURL.toString());

			URLConnection urlconn = serviceURL.openConnection();
			HttpURLConnection hcon = (HttpURLConnection) urlconn;
			urlconn.setDoInput(true);
			urlconn.setDoOutput(true);
			hcon.setRequestMethod("POST");
			hcon.setRequestProperty("Content-Type", "text/xml");

			DataOutputStream out = new DataOutputStream(hcon.getOutputStream());
			out.writeBytes(request);
			out.flush();
			out.close();
			SAXReader xmlReader = new SAXReader();
			response = xmlReader.read(urlconn.getInputStream());
		} catch (MalformedURLException e) {
			logger.error("URL is malformed");
			throw new SOAPClientException("URL is malformed.", e);
		} catch (IOException e) {
			logger.error("URL connection error");
			throw new SOAPClientException("URL connection error.", e);
		} catch (DocumentException e) {
			logger.error("Build document error");
			throw new SOAPClientException("Build document error.", e);
		}

		logger.debug(response.asXML());
		return response;
	}

	private synchronized String authenticate() throws SOAPClientException {
		String _sessionID = null;
		try {
			URL authenticateURL;
			authenticateURL = new URL("http://" + server + authenticate);
			URLConnection urlconn = authenticateURL.openConnection();
			urlconn.setDoInput(true);
			urlconn.setDoOutput(true);
			DataOutputStream out = new DataOutputStream(urlconn.getOutputStream());
			String strAuthRequest = "<SOAP:Envelope xmlns:SOAP=\"http://schemas.xmlsoap.org/soap/envelope/\">";
			strAuthRequest += "<SOAP:Header/>";
			strAuthRequest += "<SOAP:Body>";
			strAuthRequest += "<Authenticate xmlns=\"http://schemas.cordys.com/1.0/webgateway\">";
			strAuthRequest += "	<username>";
			strAuthRequest += userName;
			strAuthRequest += "</username>";
			strAuthRequest += "	<password>";
			strAuthRequest += password;
			strAuthRequest += "</password>";
			strAuthRequest += "</Authenticate>";
			strAuthRequest += "</SOAP:Body>";
			strAuthRequest += "</SOAP:Envelope>";
			out.writeBytes(strAuthRequest);
			out.close();

			StringBuffer reply = new StringBuffer();
			BufferedReader in = new BufferedReader(new InputStreamReader(urlconn.getInputStream()));
			for (int c = in.read(); c != -1; c = in.read()) {
				reply.append((char) c);
			}
			String strReply = new String(reply);
			Document doc = DocumentHelper.parseText(strReply);
			Node node = doc.selectSingleNode("//*[name()='wcp-session']");
			if (null != node) {
				String strSessionID = node.getText();
				_sessionID = strSessionID;
			}
		} catch (MalformedURLException e) {
			logger.error("URL is malformed");
			throw new SOAPClientException("URL is malformed", e);
		} catch (IOException e) {
			logger.error("URL connection error");
			throw new SOAPClientException("URL connection error", e);
		} catch (DocumentException e) {
			logger.error("parse xml error");
			throw new SOAPClientException("parse xml error", e);
		}
		return _sessionID;
	}

}