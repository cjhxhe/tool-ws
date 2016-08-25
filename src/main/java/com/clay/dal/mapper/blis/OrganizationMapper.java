package com.clay.dal.mapper.blis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Options.FlushCachePolicy;

@Mapper
public interface OrganizationMapper {

	@Select("SELECT BO.ORGANIZATIONUNITID, BC.CUSTOMERID FROM BLIS_CUSTOMER BC, BLIS_ORGANIZATIONUNIT BO "
			+ "WHERE BO.ORGANIZATIONUNITID = BC.ORGANIZATIONUNITID AND BO.NAME = #{organizationName} AND ROWNUM < 2 ")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	public Map<String, Integer> selectOrgAndCustomerIdsByOrgName(@Param("organizationName") String organizationName);

	@Select("SELECT BI.INDIVIDUALID FROM BLIS_INDIVIDUAL BI, BLIS_ORGANIZATIONUNIT BO "
			+ "WHERE BI.ORGANIZATIONUNITID = BO.ORGANIZATIONUNITID AND BO.ORGANIZATIONUNITID = #{organizationId} ORDER BY BI.INDIVIDUALID")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	public List<Integer> getIndividualIdsByOrgId(@Param("organizationId") Integer organizationId);
}
