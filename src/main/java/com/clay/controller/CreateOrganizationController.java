package com.clay.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.clay.service.CreateOrganizationService;

@Controller
public class CreateOrganizationController {
	
	@Resource
	private CreateOrganizationService createOrganizationService;
	
	@RequestMapping(path = "/createOrganization", method = { RequestMethod.GET, RequestMethod.POST })
	public String createOrganization(@RequestParam("orgName") String orgName) {
		createOrganizationService.createOrganization(orgName);
		return "Success";
	}

}
