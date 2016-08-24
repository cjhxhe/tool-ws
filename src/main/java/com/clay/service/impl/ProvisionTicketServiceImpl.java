package com.clay.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.clay.dal.mapper.boss.ProvisionTicketMapper;
import com.clay.domain.ProvisionTicket;
import com.clay.service.ProvisionTicketService;
import com.clay.util.HttpCallUtil;
import com.clay.util.StringUtil;

@Service
public class ProvisionTicketServiceImpl implements ProvisionTicketService {

	private static Logger logger = LoggerFactory.getLogger(ProvisionTicketServiceImpl.class);

	private static final String SERVICETYPE_CONNECT = "Connect";

	private static final String SERVICETYPE_TELEPRESENCE = "Telepresence";
	
	private static final String SERVICETYPE_CCA = "TEL";

	private static final String SERVICETYPE_CWMAIL = "C W MAIL";

	private static final String SERVICETYPE_CISCOMAIL = "Cisco Mail";

	private static final String TAGNAME_CMR = "CMR Add-on";

	private static final String TAGNAME_CCASP = "CCA Re-assignable Ports";

	private static final String TAGNAME_CCASPFED = "CCA Re-assignable Ports FedRAMP";

	private static final String SHOW_SITE_TICKET_ACTION = "/bpsui/ticket/showProvisionTicket.do";

	private static final String DEFAULT_SUBMIT_SITE_TICKET_ACTION = "/bpsui/ticket/submitNewSiteProvisionTicketAction.do";

	private static final String SHOW_CMR_TICKET_ACTION = "/bpsui/ticket/showCMRAddOnTicket.do";

	private static final String SUBMIT_CMR_TICKET_ACTION = "/bpsui/ticket/submitCMRAddOnTicketAction.do";

	private static final String SHOW_OT_TICKET_ACTION = "/bpsui/ticket/showOneTouchTicket.do";

	private static final String SUBMIT_OT_TICKET_ACTION = "/bpsui/ticket/submitOneTouchTicketAction.do";

	private static final String SHOW_CCASP_TICKET_ACTION = "/bpsui/ticket/showCCAReassignableTicket.do";

	private static final String SUBMIT_CCASP_TICKET_ACTION = "/bpsui/ticket/submitCCAReassignableTicketAction.do";

	private static final String SHOW_CONNECT_TICKET_ACTION = "/bpsui/ticket/showConnectTicket.do";

	private static final String SUBMIT_CONNECT_TICKET_ACTION = "/bpsui/ticket/submitConnectTicketAction.do";

	private static final String BPSUI_BYPASS_PARAM = "&source=PAS";

	@Value("${bps.ui.host}")
	private String bpsuiHost;

	@Autowired
	private ProvisionTicketMapper provisionTicketMapper;

	@Override
	public void submitProvisionTicketsByOrderId(String orderId) {
		// 1. Get all tickets
		List<ProvisionTicket> provisionTickets = provisionTicketMapper.getProvisionTicketByOrderId(orderId);
		// 2. Loop tickets, checking ticket type
		for (ProvisionTicket provisionTicket : provisionTickets) {
			String ticketPageParam = "id=" + provisionTicket.getProvisionTicketId() + BPSUI_BYPASS_PARAM;
			logger.debug("ticketPageParam: " + ticketPageParam);

			String showTicketURL = "";
			String submitTicketURL = "";
			boolean isSiteTicket = false;
			if (StringUtil.isEmpty(provisionTicket.getWebexUrl())) {
				// 3.1 Non-Site tickets
				if (SERVICETYPE_CONNECT.equalsIgnoreCase(provisionTicket.getServiceType())) {
					showTicketURL = SHOW_CONNECT_TICKET_ACTION;
					submitTicketURL = SUBMIT_CONNECT_TICKET_ACTION;
				} else if (SERVICETYPE_CWMAIL.equalsIgnoreCase(provisionTicket.getServiceType())
						|| SERVICETYPE_CISCOMAIL.equalsIgnoreCase(provisionTicket.getServiceType())) {
					// TODO Cisco Mail ticket is not implemented yet
					continue;
				} else if (SERVICETYPE_TELEPRESENCE.equalsIgnoreCase(provisionTicket.getServiceType())) {
					if (TAGNAME_CMR.equalsIgnoreCase(provisionTicket.getTagName())) {
						showTicketURL = SHOW_CMR_TICKET_ACTION;
						submitTicketURL = SUBMIT_CMR_TICKET_ACTION;
					} else {
						showTicketURL = SHOW_OT_TICKET_ACTION;
						submitTicketURL = SUBMIT_OT_TICKET_ACTION;
					}
				} else if (SERVICETYPE_CCA.equalsIgnoreCase(provisionTicket.getServiceType())) {
					if (TAGNAME_CCASP.equalsIgnoreCase(provisionTicket.getTagName())
							|| TAGNAME_CCASPFED.equalsIgnoreCase(provisionTicket.getTagName())) {
						showTicketURL = SHOW_CCASP_TICKET_ACTION;
						submitTicketURL = SUBMIT_CCASP_TICKET_ACTION;
					}
				} else {
					continue;
				}
			} else {
				// 3.2 Site tickets
				showTicketURL = SHOW_SITE_TICKET_ACTION;
				submitTicketURL = DEFAULT_SUBMIT_SITE_TICKET_ACTION;
				isSiteTicket = true;
			}

			// 3.3 Process ticket via http call
			// step 1: open ticket
			String ticketPageResponse = HttpCallUtil.sendPostRequest(bpsuiHost + showTicketURL, ticketPageParam, false,
					"");
			if (StringUtil.isEmpty(ticketPageResponse)) {
				continue;
			}
			
			String instructions = "N/A";
			Matcher instructionsMatcher = Pattern.compile("^\\s*<textarea id=\"instructions\".+?>(.*?)</textarea>",
					Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL).matcher(ticketPageResponse);
			if (instructionsMatcher.find()) {
				instructions = instructionsMatcher.group(1);
			}

			// step 2: submit ticket
			String submitTicketParam = "?id=" + provisionTicket.getProvisionTicketId() + BPSUI_BYPASS_PARAM;
			logger.debug("submitTicketParam: " + submitTicketParam);
			Map<String, String> paramsWithoutFile = new HashMap<String, String>();
			paramsWithoutFile.put("id", provisionTicket.getProvisionTicketId());
			paramsWithoutFile.put("source", "PAS");
			paramsWithoutFile.put("emailList", "clayyu@cisco.com");
			paramsWithoutFile.put("instructions", instructions);
			
			if (isSiteTicket) {
				Matcher actionMatcher = Pattern
						.compile("<FORM .* ACTION=\"(.+\\.do).*\"", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE)
						.matcher(ticketPageResponse);
				if (actionMatcher.find()) {
					submitTicketURL = actionMatcher.group(1);
					logger.debug("Site SubmitTicketAction overwritten: " + submitTicketURL);
				}
				
				paramsWithoutFile.put("brandingReference", "clay-tool");
				paramsWithoutFile.put("brandingRef", "clay-tool");
				paramsWithoutFile.put("webexUrl", provisionTicket.getWebexUrl());
				paramsWithoutFile.put("language", "English");
			}

			String submitResponse = HttpCallUtil
					.sendPostRequestMultiPart(bpsuiHost + submitTicketURL + submitTicketParam, paramsWithoutFile, null);
			logger.trace(submitResponse);
		}
	}

}
