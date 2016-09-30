package com.clay.service;

import com.clay.enums.OrderType;

public interface OrderService {
	
	String createOrder(String accountName, OrderType orderType);

}	
