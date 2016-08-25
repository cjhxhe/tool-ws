package com.clay.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.service.CreateOrganizationService;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class CreateOrganizationServiceImplTest {

	@Autowired
	private CreateOrganizationService createOrganizationService;
	
	@Test
	public void testCreateOrganization() {
		String result = createOrganizationService.createOrganization("claytesttoolws001");
		assert "Success".equalsIgnoreCase(result);
	}
}
