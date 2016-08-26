package com.clay.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/order")
@RestController
public class OrderController {

	@RequestMapping(path = "/create", method = { RequestMethod.GET, RequestMethod.POST })
	public String createOrder() {
		return null;
	}
}
