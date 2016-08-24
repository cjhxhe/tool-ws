package com.clay.util;

import java.net.HttpURLConnection;
import java.net.URL;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

public class URLConnectionFactory {
	public static HttpURLConnection getHttpConnection(String url) throws Exception {
		URL u = new URL(url);
		return (HttpURLConnection) u.openConnection();
	}

	@SuppressWarnings("restriction")
	public static HttpsURLConnection getHttpsConnection(String url) throws Exception {
		URL u = new URL(null, url, new sun.net.www.protocol.https.Handler());
		HttpsURLConnection connection = (HttpsURLConnection) u.openConnection();
		connection.setHostnameVerifier(new HostnameVerifier() {

			@Override
			public boolean verify(String string, SSLSession ssls) {
				return true;
			}
		});
		return connection;
	}
}
