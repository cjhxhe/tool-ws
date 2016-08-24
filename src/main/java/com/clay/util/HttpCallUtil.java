package com.clay.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.MultipartPostMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.CollectionUtils;

import sun.misc.BASE64Encoder;

@SuppressWarnings("restriction")
public class HttpCallUtil {
	private static Logger logger = LoggerFactory.getLogger(HttpCallUtil.class);

	private static MultiThreadedHttpConnectionManager connectionManager = null;

	public static String sendPostRequest(String server_url, String data) {
		logger.debug("=======================Start to sendPostRequest(String server_url, String data)...");
		String finalUrl = null;
		if (server_url != null && server_url.indexOf("?") > 0) {
			finalUrl = server_url + "&" + data;
		} else {
			finalUrl = server_url + "?" + data;
		}
		return HttpCallUtil.sendGetRequest(finalUrl);
	}

	public static String sendPostRequest(String url, NameValuePair[] params) {
		PostMethod method = null;
		BufferedReader bf = null;
		StringBuffer response = new StringBuffer(1000);
		try {
			HttpClient theClient = getHttpClient();
			method = new PostMethod(url);
			method.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
			method.addParameters(params);
			int statusCode = theClient.executeMethod(method);
			if (statusCode != HttpStatus.SC_OK) {
				logger.debug("callPostMethodCommand: Status Error: " + method.getStatusText());
			} else {
				InputStream in = method.getResponseBodyAsStream();
				bf = new BufferedReader(new InputStreamReader(in));
				String tmpStr = null;
				while ((tmpStr = bf.readLine()) != null) {
					response.append(tmpStr);
				}
				logger.debug("callPostMethodCommand: Response Data: " + response.toString());
			}
		} catch (HttpException exc) {
			logger.error("There's HttpException in callPostMethodCommand: ", exc);
		} catch (IOException exc) {
			logger.error("There's IOException in callPostMethodCommand: ", exc);
		} catch (Exception exc) {
			logger.error("There's exception in callPostMethodCommand: ", exc);
		} finally {
			try {
				if (method != null) {
					method.releaseConnection();
				}
				if (bf != null) {
					bf.close();
				}
			} catch (Exception e) {
				logger.error("There's exception in callPostMethodCommand: ", e);
			}
		}
		return response.toString();
	}

	public static String sendPostRequestAuth(String url, NameValuePair[] params, String auth) {
		PostMethod method = null;
		BufferedReader bf = null;
		StringBuffer response = new StringBuffer(1000);
		try {
			HttpClient theClient = getHttpClient();
			method = new PostMethod(url);
			method.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
			method.setRequestHeader("Authorization", "Bearer " + auth);
			method.addParameters(params);
			int statusCode = theClient.executeMethod(method);
			if (statusCode != HttpStatus.SC_OK) {
				logger.debug("callPostMethodCommand: Status Error: " + method.getStatusText());
			} else {
				InputStream in = method.getResponseBodyAsStream();
				bf = new BufferedReader(new InputStreamReader(in));
				String tmpStr = null;
				while ((tmpStr = bf.readLine()) != null) {
					response.append(tmpStr);
				}
				logger.debug("callPostMethodCommand: Response Data: " + response.toString());
			}
		} catch (HttpException exc) {
			logger.error("There's HttpException in callPostMethodCommand: ", exc);
		} catch (IOException exc) {
			logger.error("There's IOException in callPostMethodCommand: ", exc);
		} catch (Exception exc) {
			logger.error("There's exception in callPostMethodCommand: ", exc);
		} finally {
			try {
				if (method != null) {
					method.releaseConnection();
				}
				if (bf != null) {
					bf.close();
				}
			} catch (Exception e) {
				logger.error("There's exception in callPostMethodCommand: ", e);
			}
		}
		return response.toString();
	}

	public static String sendGetRequest(String url) {
		logger.debug("=======================Start sendGetRequest(String url) url=" + url);
		logger.debug("    -> call sendGetRequest ..");
		List<NameValuePair> params;
		try {
			URL urlObj = new URL(url);
			params = HttpCallUtil.parse(
					new URI(urlObj.getProtocol(), urlObj.getHost(), urlObj.getPath(), urlObj.getQuery(), null),
					"UTF-8");
			logger.debug("After parse URL params");
			for (NameValuePair param : params) {
				logger.debug(param.getName() + " : " + param.getValue());
			}
			String strBaseUrl = url;
			if (url != null && url.indexOf("?") > 0) {
				strBaseUrl = url.substring(0, url.indexOf("?"));
			}
			logger.debug("strBaseUrl=" + strBaseUrl);
			NameValuePair[] paramsArr = new NameValuePair[params.size()];
			for (int i = 0; i < params.size(); i++) {
				paramsArr[i] = (NameValuePair) params.get(i);
			}
			return HttpCallUtil.sendPostRequest(strBaseUrl, paramsArr);
		} catch (Exception e) {
			logger.debug("There's exception in sendGetRequest: " + e.toString());
			throw new RuntimeException(e);
		}
	}

	/**
	 * @return HttpClient
	 */
	public static synchronized HttpClient getHttpClient() {
		if (connectionManager == null) {
			connectionManager = new MultiThreadedHttpConnectionManager();
		}
		HttpClient client = new HttpClient(connectionManager);
		client.getHttpConnectionManager().getParams().setSoTimeout(Integer.parseInt("300000"));
		return client;
	}

	public static String sendXMLPostRequest(String endpoint, String soapRequestData, Map<String, String> requestMap) {
		BufferedReader input = null;
		OutputStreamWriter output = null;
		StringBuffer response = new StringBuffer();
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "text/xml; charset=UTF-8");
				if (requestMap != null && !requestMap.isEmpty()) {
					for (String paramName : requestMap.keySet()) {
						connection.setRequestProperty(paramName, requestMap.get(paramName));
					}
				}
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(soapRequestData);
				output.flush();
				if (connection.getResponseCode() == HttpStatus.SC_OK) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else {
					throw new Exception("sendXMLPostRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					response.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return response.toString();
	}

	public static String sendXMLPostRequest(String endpoint, String soapRequestData, boolean isAuth, String userName,
			String password, Map<String, String> requestMap, String soapAction) {
		BufferedReader input = null;
		OutputStreamWriter output = null;
		StringBuffer response = new StringBuffer();
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					BASE64Encoder enc = new sun.misc.BASE64Encoder();
					connection.setRequestProperty("Authorization",
							"Basic " + enc.encode((userName + ":" + password).getBytes()));
				}
				if (soapAction != null) {
					connection.setRequestProperty("SOAPAction", soapAction);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "text/xml; charset=UTF-8");
				if (requestMap != null && !requestMap.isEmpty()) {
					for (String paramName : requestMap.keySet()) {
						connection.setRequestProperty(paramName, requestMap.get(paramName));
					}
				}
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(soapRequestData);
				output.flush();
				if (connection.getResponseCode() == HttpStatus.SC_OK) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else {
					throw new Exception("sendXMLPostRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					response.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return response.toString();
	}

	public static String sendXMLPostRequest(String endpoint, String soapRequestData, boolean isAuth, String userName,
			String password, String soapAction) {
		return sendXMLPostRequest(endpoint, soapRequestData, isAuth, userName, password, null, soapAction);
	}

	public static NameValuePair[] getNVPairs(int length, String[]... nvpairs) {
		NameValuePair[] params = new NameValuePair[length];
		int i = 0;
		int j = nvpairs.length;
		for (i = 0; i < j; i++) {
			String[] s = nvpairs[i];
			NameValuePair pair = new NameValuePair();
			pair.setName(s[0]);
			pair.setValue(s[1]);
			params[i] = pair;
		}
		return params;
	}

	public static List<NameValuePair> parse(final URI uri, final String charset) {
		final String query = uri.getQuery();
		final char QP_SEP_A = '&';
		final char QP_SEP_S = ';';
		final char[] QP_SEPS = new char[] { QP_SEP_A, QP_SEP_S };
		final String QP_SEP_PATTERN = "[" + new String(QP_SEPS) + "]";
		if (query != null && query.length() > 0) {
			final List<NameValuePair> result = new ArrayList<NameValuePair>();
			final Scanner scanner = new Scanner(query);
			parse(result, scanner, QP_SEP_PATTERN, charset);
			return result;
		}
		return Collections.emptyList();
	}

	public static void parse(final List<NameValuePair> parameters, final Scanner scanner,
			final String parameterSepartorPattern, final String charset) {
		scanner.useDelimiter(parameterSepartorPattern);
		final String NAME_VALUE_SEPARATOR = "=";
		while (scanner.hasNext()) {
			String name = null;
			String value = null;
			final String token = scanner.next();
			final int i = token.indexOf(NAME_VALUE_SEPARATOR);
			if (i != -1) {
				name = token.substring(0, i).trim();
				value = token.substring(i + 1).trim();
			} else {
				name = token.trim();
			}
			parameters.add(new NameValuePair(name, value));
		}
	}

	public static String sendJsonPostRequest(String endpoint, String requestData, boolean isAuth, String authorization,
			Map<String, String> requestMap) {
		BufferedReader input = null;
		OutputStreamWriter output = null;
		StringBuffer response = new StringBuffer();
		try {
			HttpURLConnection connection = null;
			logger.debug("sendJsonPostRequest - endpoint: " + endpoint);
			logger.debug("sendJsonPostRequest - requestData: " + requestData);
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					connection.setRequestProperty("Authorization", authorization);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
				if (requestMap != null && !requestMap.isEmpty()) {
					for (String paramName : requestMap.keySet()) {
						connection.setRequestProperty(paramName, requestMap.get(paramName));
					}
				}
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(requestData);
				output.flush();
				if (connection.getResponseCode() == HttpStatus.SC_OK) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else if (connection.getResponseCode() == HttpStatus.SC_BAD_REQUEST) {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				} else {
					throw new Exception("sendXMLPostRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					response.append(line).append("\n");
				}
				logger.debug("sendJsonPostRequest - response: " + response.toString());
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return response.toString();
	}

	public static int sendJsonPostRequest(String endpoint, String requestData, boolean isAuth, String authorization,
			Map<String, String> requestMap, StringBuffer responseString) {
		int httpStatus = HttpStatus.SC_OK;
		BufferedReader input = null;
		OutputStreamWriter output = null;
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					connection.setRequestProperty("Authorization", authorization);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
				if (requestMap != null && !requestMap.isEmpty()) {
					for (String paramName : requestMap.keySet()) {
						connection.setRequestProperty(paramName, requestMap.get(paramName));
					}
				}
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(requestData);
				output.flush();
				httpStatus = connection.getResponseCode();
				if (connection.getResponseCode() == HttpStatus.SC_OK
						|| connection.getResponseCode() == HttpStatus.SC_NO_CONTENT) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else if (connection.getResponseCode() == HttpStatus.SC_BAD_REQUEST) {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				} else {
					throw new Exception("sendXMLPostRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					responseString.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return httpStatus;
	}

	public static int sendJsonPostRequest(String endpoint, String contentType, String requestData, boolean isAuth,
			String authorization, Map<String, String> requestMap, StringBuffer responseString) {
		int httpStatus = HttpStatus.SC_OK;
		BufferedReader input = null;
		OutputStreamWriter output = null;
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					connection.setRequestProperty("Authorization", authorization);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", contentType);
				if (requestMap != null && !requestMap.isEmpty()) {
					for (String paramName : requestMap.keySet()) {
						connection.setRequestProperty(paramName, requestMap.get(paramName));
					}
				}
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(requestData);
				output.flush();
				httpStatus = connection.getResponseCode();
				if (connection.getResponseCode() == HttpStatus.SC_OK
						|| connection.getResponseCode() == HttpStatus.SC_NO_CONTENT) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else if (connection.getResponseCode() == HttpStatus.SC_BAD_REQUEST) {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				} else {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				}
				for (String line; (line = input.readLine()) != null;) {
					responseString.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return httpStatus;
	}

	public static String sendPostRequest(String endpoint, String requestData, boolean isAuth, String userName,
			String password) {
		BufferedReader input = null;
		OutputStreamWriter output = null;
		StringBuffer buffer = new StringBuffer();
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					BASE64Encoder enc = new sun.misc.BASE64Encoder();
					String authorization = "Basic "
							+ enc.encode((userName + ":" + password).getBytes()).replaceAll("\\s", "");
					connection.setRequestProperty("Authorization", authorization);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(requestData);
				output.flush();
				if (connection.getResponseCode() == HttpStatus.SC_OK
						|| connection.getResponseCode() == HttpStatus.SC_NO_CONTENT) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else if (connection.getResponseCode() == HttpStatus.SC_BAD_REQUEST) {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				} else {
					throw new Exception("sendPostRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					buffer.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return buffer.toString();
	}

	public static String sendPostRequest(String endpoint, String requestData, boolean isAuth, String authorization) {
		BufferedReader input = null;
		OutputStreamWriter output = null;
		StringBuffer buffer = new StringBuffer();
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					connection.setRequestProperty("Authorization", authorization);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(requestData);
				output.flush();
				if (connection.getResponseCode() == HttpStatus.SC_OK
						|| connection.getResponseCode() == HttpStatus.SC_NO_CONTENT) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else if (connection.getResponseCode() == HttpStatus.SC_BAD_REQUEST) {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				} else {
					throw new Exception("sendPostRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					buffer.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return buffer.toString();
	}

	public static String sendPostRequestMultiPart(String endpoint, String requestData, boolean isAuth, String authorization) {
		BufferedReader input = null;
		OutputStreamWriter output = null;
		StringBuffer buffer = new StringBuffer();
		try {
			HttpURLConnection connection = null;
			if (endpoint != null && endpoint.matches("http:(.*)")) {
				connection = URLConnectionFactory.getHttpConnection(endpoint);
			} else if (endpoint != null && endpoint.matches("https:(.*)")) {
				connection = URLConnectionFactory.getHttpsConnection(endpoint);
			} else {
				logger.debug("Unknown protocol " + endpoint);
			}
			if (connection != null) {
				if (isAuth) {
					connection.setRequestProperty("Authorization", authorization);
				}
				connection.setDoOutput(true);
				connection.setDoInput(true);
				connection.setRequestMethod("POST");
				connection.setRequestProperty("Content-Type", "multipart/form-data;boundary=9988776655;charset=utf-8");
				output = new OutputStreamWriter(connection.getOutputStream());
				output.write(requestData);
				output.flush();
				if (connection.getResponseCode() == HttpStatus.SC_OK
						|| connection.getResponseCode() == HttpStatus.SC_NO_CONTENT) {
					input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				} else if (connection.getResponseCode() == HttpStatus.SC_BAD_REQUEST) {
					input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
				} else {
					throw new Exception("sendPostMultiPartRequest:\n" + connection.getErrorStream());
				}
				for (String line; (line = input.readLine()) != null;) {
					buffer.append(line).append("\n");
				}
			}
		} catch (Exception e) {
			logger.debug(e.getMessage());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
			if (output != null) {
				try {
					output.close();
				} catch (Exception e2) {
					logger.debug(e2.getMessage());
				}
			}
		}
		return buffer.toString();
	}
	
	@SuppressWarnings("deprecation")
	public static String sendPostRequestMultiPart(String url, Map<String, String> paramsWithoutFile, Map<String, File> fileParams) {
		MultipartPostMethod method = null;
		BufferedReader bf = null;
		StringBuffer response = new StringBuffer(1000);
		try {
			HttpClient theClient = getHttpClient();
			method = new MultipartPostMethod(url);
			method.setRequestHeader("Content-Type", "multipart/form-data");
			if (!CollectionUtils.isEmpty(paramsWithoutFile)) {
				for (String key : paramsWithoutFile.keySet()) {
					method.addParameter(key, paramsWithoutFile.get(key));
				}
			}
			if (!CollectionUtils.isEmpty(fileParams)) {
				for (String key : fileParams.keySet()) {
					method.addParameter(key, fileParams.get(key));
				}
			}
			int statusCode = theClient.executeMethod(method);
			if (statusCode != HttpStatus.SC_OK) {
				logger.debug("callPostMultiPartMethodCommand: Status Error: " + method.getStatusText());
			} else {
				InputStream in = method.getResponseBodyAsStream();
				bf = new BufferedReader(new InputStreamReader(in));
				String tmpStr = null;
				while ((tmpStr = bf.readLine()) != null) {
					response.append(tmpStr);
				}
				logger.debug("callPostMultiPartMethodCommand: Response Data: " + response.toString());
			}
		} catch (HttpException exc) {
			logger.error("There's HttpException in callPostMultiPartMethodCommand: ", exc);
		} catch (IOException exc) {
			logger.error("There's IOException in callPostMultiPartMethodCommand: ", exc);
		} catch (Exception exc) {
			logger.error("There's exception in callPostMultiPartMethodCommand: ", exc);
		} finally {
			try {
				if (method != null) {
					method.releaseConnection();
				}
				if (bf != null) {
					bf.close();
				}
			} catch (Exception e) {
				logger.error("There's exception in callPostMultiPartMethodCommand: ", e);
			}
		}
		return response.toString();
	}
	
}
