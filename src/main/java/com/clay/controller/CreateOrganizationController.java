package com.clay.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.service.CreateOrganizationService;

@Controller
public class CreateOrganizationController {
	
	@Resource
	private CreateOrganizationService createOrganizationService;
	
	@RequestMapping(path = "/createOrganization", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String createOrganization(@RequestParam("orgName") String orgName) {
		return createOrganizationService.createOrganization(orgName);
	}

}
