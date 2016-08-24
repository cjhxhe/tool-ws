package com.clay.dal.mapper.boss;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

import com.clay.domain.SitePortfolio;

public class SitePortfolioProvider {

	private static final String TABLE_NAME = "pv_site_portfolio";

	@InsertProvider(type = SitePortfolioProvider.class, method = "insertSitePortfolio")
	public String insertSitePortfolio(@Param("sitePortfolio") final SitePortfolio sitePortfolio) {
		return new SQL() {
			{
				INSERT_INTO(TABLE_NAME);
				VALUES("site_portfolio_id", "#{sitePortfolio.sitePortfolioId}");
				if (sitePortfolio.getSiteId() != null) {
					VALUES("site_id", "#{sitePortfolio.siteId}");
				}
				if (sitePortfolio.getWebexUrl() != null) {
					VALUES("site_url", "#{sitePortfolio.webexUrl}");
				}
				if (sitePortfolio.getAttribute1() != null) {
					VALUES("attribute1", "#{sitePortfolio.attribute1}");
				}
				if (sitePortfolio.getAttribute2() != null) {
					VALUES("attribute2", "#{sitePortfolio.attribute2}");
				}
				if (sitePortfolio.getCreatedBy() != null) {
					VALUES("created_by", "#{sitePortfolio.createdBy}");
				}
				if (sitePortfolio.getCreationDate() != null) {
					VALUES("creation_date", "#{sitePortfolio.creationDate}");
				}
				if (sitePortfolio.getLastModifiedBy() != null) {
					VALUES("last_modified_by", "#{sitePortfolio.lastModifiedBy}");
				}
				if (sitePortfolio.getLastModifiedDate() != null) {
					VALUES("last_modified_date", "#{sitePortfolio.lastModifiedDate}");
				}
			}
		}.toString();
	};
}
