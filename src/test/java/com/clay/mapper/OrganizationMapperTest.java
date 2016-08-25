package com.clay.mapper;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.clay.App;
import com.clay.dal.mapper.blis.OrganizationMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class OrganizationMapperTest {

	@Autowired
	private OrganizationMapper organizationMapper;

	@Test
	public void selectOrgAndCustomerIdsByOrgName() {
		Map<String, Integer> resultMap = organizationMapper.selectOrgAndCustomerIdsByOrgName("claytesttoolws001");
		assert resultMap != null && !resultMap.isEmpty();
		for (String key : resultMap.keySet()) {
			System.out.println(key + ":" + resultMap.get(key));
		}
	}

	@Test
	public void getIndividualIdsByOrgId() {
		List<Integer> resultList = organizationMapper.getIndividualIdsByOrgId(163079);
		assert resultList != null && !resultList.isEmpty();
		for (Integer integer : resultList) {
			System.out.println(integer);
		}
	}
}
