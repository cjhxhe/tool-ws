package com.clay.service;

import com.clay.enums.AccountType;

public interface AccountService {
	
	String createAccount(String accountName, String organizationName, AccountType accountType);

}
