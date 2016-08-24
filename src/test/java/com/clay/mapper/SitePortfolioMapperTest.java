package com.clay.mapper;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.dal.mapper.boss.SitePortfolioMapper;
import com.clay.domain.SitePortfolio;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class SitePortfolioMapperTest {

	@Autowired
	private SitePortfolioMapper sitePortfolioMapper;

	@Test
	public void findBySiteId() {
		List<SitePortfolio> sitePortfolioList = sitePortfolioMapper.findBySiteId("84031");
		assert null != sitePortfolioList && !sitePortfolioList.isEmpty()
				&& sitePortfolioList.get(0).getSiteId().equals("84031");
		System.out.println("sitePortfolio : " + sitePortfolioList.get(0));
	}

	@Test
	public void insertSitePortfolio() {
		SitePortfolio sitePortfolio = new SitePortfolio();
		sitePortfolio.setSiteId("500001");
		sitePortfolio.setWebexUrl("claytestmb.qa.webex.com");
		sitePortfolio.setAttribute1("PendingWelcomeEmail");
		sitePortfolio.setCreatedBy("clay");
		sitePortfolio.setLastModifiedBy("clay");
		sitePortfolio.setCreationDate(new Date());
		sitePortfolio.setLastModifiedDate(new Date());
		sitePortfolioMapper.insertSitePortfolio(sitePortfolio);
		List<SitePortfolio> sitePortfolioList = sitePortfolioMapper.findBySiteId("500001");
		assert null != sitePortfolioList && !sitePortfolioList.isEmpty()
				&& sitePortfolioList.get(0).getSiteId().equals("500001");
	}

	@Test
	public void updateAttribute1AsTODOByOrderId() {
		sitePortfolioMapper.updateAttribute1AsTODOByOrderId("175600");
	}
}
