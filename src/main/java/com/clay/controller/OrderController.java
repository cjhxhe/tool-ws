package com.clay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.clay.enums.OrderType;
import com.clay.service.OrderService;

@RequestMapping("/order")
@RestController
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping(path = "/create", method = { RequestMethod.GET, RequestMethod.POST })
	public String createOrder(@RequestParam("accountName") String accountName,
			@RequestParam("orderType") OrderType orderType) {
		return orderService.createOrder(accountName, orderType);
	}
}
