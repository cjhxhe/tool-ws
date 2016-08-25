package com.clay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.service.CreateOrganizationService;

@Controller
@RequestMapping("/organization")
public class CreateOrganizationController {

	@Autowired
	private CreateOrganizationService createOrganizationService;

	@RequestMapping(path = "/create/{orgName}", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String createOrganization(@PathVariable("orgName") String orgName) {
		return createOrganizationService.createOrganization(orgName);
	}

}
