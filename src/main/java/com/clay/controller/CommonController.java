package com.clay.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/common")
@RestController
public class CommonController {

	@RequestMapping(path = "/execproc", method = { RequestMethod.GET, RequestMethod.POST })
	public String execProc() {
		return null;
	}
}
