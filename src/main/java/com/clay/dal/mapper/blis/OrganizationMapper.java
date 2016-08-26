package com.clay.dal.mapper.blis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Options.FlushCachePolicy;
import org.apache.ibatis.type.JdbcType;

@Mapper
public interface OrganizationMapper {

	@Select("SELECT BO.ORGANIZATIONUNITID, BC.CUSTOMERID FROM BLIS_CUSTOMER BC, BLIS_ORGANIZATIONUNIT BO "
			+ "WHERE BO.ORGANIZATIONUNITID = BC.ORGANIZATIONUNITID AND BO.NAME = #{organizationName} AND ROWNUM < 2 ")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	@Results(value = {
			@Result(property = "ORGANIZATIONUNITID", column = "ORGANIZATIONUNITID", javaType = Integer.class, jdbcType = JdbcType.INTEGER),
			@Result(property = "CUSTOMERID", column = "CUSTOMERID", javaType = Integer.class, jdbcType = JdbcType.INTEGER) })
	public Map<String, Integer> selectOrgAndCustomerIdsByOrgName(@Param("organizationName") String organizationName);

	@Select("SELECT BI.INDIVIDUALID FROM BLIS_INDIVIDUAL BI, BLIS_ORGANIZATIONUNIT BO "
			+ "WHERE BI.ORGANIZATIONUNITID = BO.ORGANIZATIONUNITID AND BO.ORGANIZATIONUNITID = #{organizationId} ORDER BY BI.INDIVIDUALID")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	public List<Integer> getIndividualIdsByOrgId(@Param("organizationId") Integer organizationId);
}
