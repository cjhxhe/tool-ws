package com.clay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.clay.service.WelcomeEmailService;

@RequestMapping("/welcomeemail")
@RestController
public class WelcomeEmailController {

	@Autowired
	private WelcomeEmailService welcomeEmailService;

	@RequestMapping("/execwelsql")
	public String execWelSQL(@RequestParam("hgssiteid") String hgssiteid, @RequestParam("enggsiteid") String enggsiteid,
			@RequestParam(name = "langid", required = false) String langid) {
		welcomeEmailService.execWelcomeEmailSQL(hgssiteid, enggsiteid, langid);
		return "Success";
	}
}
