package com.clay.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.service.OrganizationService;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class OrganizationServiceImplTest {

	@Autowired
	private OrganizationService organizationService;
	
	@Test
	public void testCreateOrganization() {
		String result = organizationService.createOrganization("claytesttoolws001");
		assert "Success".equalsIgnoreCase(result);
	}
}
