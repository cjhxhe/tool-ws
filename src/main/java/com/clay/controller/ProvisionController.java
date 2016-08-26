package com.clay.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/provision")
@RestController
public class ProvisionController {

	@RequestMapping(path = "/site/create", method = { RequestMethod.GET, RequestMethod.POST })
	public String createSite() {
		return null;
	}
}
