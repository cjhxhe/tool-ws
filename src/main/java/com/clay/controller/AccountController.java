package com.clay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.enums.AccountType;
import com.clay.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	private AccountService accountService;

	@RequestMapping(path = "/create", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String createAccount(@RequestParam("accountName") String accountName, 
			@RequestParam("organizationName") String organizationName, @RequestParam("accountType") String accountType) {
		return accountService.createAccount(accountName, organizationName, AccountType.valueOf(accountType));
	}

}
