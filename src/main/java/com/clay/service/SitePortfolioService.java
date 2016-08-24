package com.clay.service;

import java.util.List;

import com.clay.domain.SitePortfolio;

public interface SitePortfolioService {
	List<SitePortfolio> findBySiteId(String siteId);
	
	void insertSitePortfolio(SitePortfolio sitePortfolio);
	
	void updateAttribute1AsTODOByOrderId(String orderId);
}
