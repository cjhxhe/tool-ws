package com.clay.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.enums.OrderType;
import com.clay.service.OrderService;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class OrderServiceImplTest {

	@Autowired
	private OrderService orderService;
	
	@Test
	public void testCreateOrder() {
		String result = orderService.createOrder("andr16090902", OrderType.NEW);
		assert "Success".equalsIgnoreCase(result);
	}
}
