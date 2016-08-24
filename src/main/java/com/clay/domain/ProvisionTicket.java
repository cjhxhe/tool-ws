package com.clay.domain;

import java.io.Serializable;

public class ProvisionTicket implements Serializable {

	private static final long serialVersionUID = 1580295304849188690L;

	private String provisionTicketId;

	private String serviceType;

	private String tagName;
	
	private String webexUrl;

	public String getProvisionTicketId() {
		return provisionTicketId;
	}

	public void setProvisionTicketId(String provisionTicketId) {
		this.provisionTicketId = provisionTicketId;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public String getWebexUrl() {
		return webexUrl;
	}

	public void setWebexUrl(String webexUrl) {
		this.webexUrl = webexUrl;
	}

}
