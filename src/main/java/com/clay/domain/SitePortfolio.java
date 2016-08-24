package com.clay.domain;

import java.io.Serializable;
import java.util.Date;

public class SitePortfolio implements Serializable {

	private static final long serialVersionUID = 9014333021102173082L;

	private Integer sitePortfolioId;

	private String siteId;

	private String webexUrl;

	private String attribute1;

	private String attribute2;
	
	private String createdBy;
	
	private Date creationDate;
	
	private String lastModifiedBy;
	
	private Date lastModifiedDate;

	public Integer getSitePortfolioId() {
		return sitePortfolioId;
	}

	public void setSitePortfolioId(Integer sitePortfolioId) {
		this.sitePortfolioId = sitePortfolioId;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

	public String getWebexUrl() {
		return webexUrl;
	}

	public void setWebexUrl(String webexUrl) {
		this.webexUrl = webexUrl;
	}

	public String getAttribute1() {
		return attribute1;
	}

	public void setAttribute1(String attribute1) {
		this.attribute1 = attribute1;
	}

	public String getAttribute2() {
		return attribute2;
	}

	public void setAttribute2(String attribute2) {
		this.attribute2 = attribute2;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public String getLastModifiedBy() {
		return lastModifiedBy;
	}

	public void setLastModifiedBy(String lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	@Override
	public String toString() {
		return "Site ID:" + siteId + ", Webex URL: " + webexUrl;
	}

}
