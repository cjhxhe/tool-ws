package com.clay.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.enums.AccountType;
import com.clay.service.AccountService;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class AccountServiceImplTest {

	@Autowired
	private AccountService accountService;
	
	@Test
	public void testCreateOrganization() {
		String result = accountService.createAccount("claytesttoolws001a01", "claytesttoolws001", AccountType.DIRECT);
		assert "Success".equalsIgnoreCase(result);
	}
}
