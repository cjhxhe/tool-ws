package com.clay.soap;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.exception.SOAPClientException;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
// @SpringApplicationConfiguration(classes = App.class)
// @WebAppConfiguration
public class SOAPClientTest {

	@Autowired
	SOAPClient soapClient;
	
	@Test
	public void getInstance() {
		try {
			soapClient.sendSOAPMessage("");
			assert soapClient != null;
		} catch (SOAPClientException e) {
			e.printStackTrace();
		}
	}
}
