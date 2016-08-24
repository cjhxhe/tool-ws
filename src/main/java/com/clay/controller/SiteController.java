package com.clay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.clay.service.SitePortfolioService;

@RequestMapping("/site")
@RestController
public class SiteController {

	@Autowired
	private SitePortfolioService sitePortfolioService;

	@RequestMapping(path = "/updateportfolio/{orderId}", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateAttribute1AsTODOByOrderId(@PathVariable("orderId") String orderId) {
		sitePortfolioService.updateAttribute1AsTODOByOrderId(orderId);
		return "Success";
	}
}
