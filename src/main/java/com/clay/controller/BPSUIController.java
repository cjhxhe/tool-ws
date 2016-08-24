package com.clay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.clay.service.ProvisionTicketService;

@RequestMapping("/bpsui")
@RestController
public class BPSUIController {

	@Autowired
	private ProvisionTicketService provisionTicketService;

	@RequestMapping(path = "/submitticket/{orderId}", method = { RequestMethod.GET, RequestMethod.POST })
	public String submitProvisionTicket(@PathVariable("orderId") String orderId) {
		provisionTicketService.submitProvisionTicketsByOrderId(orderId);
		return "Success";
	}
}
