package com.clay.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.clay.dal.mapper.boss.SitePortfolioMapper;
import com.clay.domain.SitePortfolio;
import com.clay.service.SitePortfolioService;

@Service
@Transactional("bossTransactionManager")
public class SitePortfolioServiceImpl implements SitePortfolioService {

	@Autowired
	private SitePortfolioMapper sitePortfolioMapper;

	@Override
	public List<SitePortfolio> findBySiteId(String siteId) {
		return sitePortfolioMapper.findBySiteId(siteId);
	}

	@Override
	public void insertSitePortfolio(SitePortfolio sitePortfolio) {
		sitePortfolioMapper.insertSitePortfolio(sitePortfolio);
	}

	@Override
	public void updateAttribute1AsTODOByOrderId(String orderId) {
		sitePortfolioMapper.updateAttribute1AsTODOByOrderId(orderId);
	}

}
