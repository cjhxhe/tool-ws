package com.clay.controller;

import org.apache.commons.httpclient.NameValuePair;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.clay.util.HttpCallUtil;

@RequestMapping("/bpsapi")
@RestController
public class BPSAPIController {

	@Value("${bps.api.updatelink}")
	private String bpsapiUrl;

	@RequestMapping(path = "/updatetask", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateTask(@RequestParam("name") String name, @RequestParam("clazz") String clazz,
			@RequestParam("period") String period) {
		String retStr = "Success";
		String firstTime = "12/12/12 12:00:00"; // Hard code, no actual use
		NameValuePair namePair = new NameValuePair("name", name);
		NameValuePair clazzPair = new NameValuePair("clazz", clazz);
		NameValuePair firstTimePair = new NameValuePair("firstTime", firstTime);
		NameValuePair periodPair = new NameValuePair("period", period);
		try {
			HttpCallUtil.sendPostRequest(bpsapiUrl,
					new NameValuePair[] { namePair, clazzPair, firstTimePair, periodPair });
		} catch (Exception e) {
			retStr = "Failure";
		}
		return retStr;
	}
}
