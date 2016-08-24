package com.clay.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.dal.mapper.boss.ProvisionTicketMapper;
import com.clay.domain.ProvisionTicket;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class ProvisionTicketMapperTest {

	@Autowired
	private ProvisionTicketMapper provisionTicketMapper;

	@Test
	public void testGetProvisionTicketByOrderId() {
		List<ProvisionTicket> provisionTickets = provisionTicketMapper.getProvisionTicketByOrderId("157352");
		assert null != provisionTickets && !provisionTickets.isEmpty();
		for (int i = 0; i < provisionTickets.size(); i++) {
			ProvisionTicket ticket = provisionTickets.get(i);
			System.out.println(ticket.getProvisionTicketId() + ticket.getServiceType() + ticket.getTagName());
		}
	}
}
