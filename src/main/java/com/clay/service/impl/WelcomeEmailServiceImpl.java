package com.clay.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clay.dal.mapper.rpth.WelcomeEmailMapper;
import com.clay.service.WelcomeEmailService;
import com.clay.util.StringUtil;

@Service
public class WelcomeEmailServiceImpl implements WelcomeEmailService {

	@Autowired
	private WelcomeEmailMapper welcomeEmailMapper;

	@Override
	public void execWelcomeEmailSQL(String hgsSiteId, String enggSiteId, String langId) {
		if (StringUtil.isEmpty(hgsSiteId) || StringUtil.isEmpty(enggSiteId)) {
			return;
		}
		if (StringUtil.isEmpty(langId)) {
			langId = "1";
		}
		welcomeEmailMapper.execWelcomeEmailSQL(Integer.parseInt(hgsSiteId), Integer.parseInt(enggSiteId),
				Integer.parseInt(langId));
	}

}
