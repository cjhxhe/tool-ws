package com.clay.dal.mapper.blis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Options.FlushCachePolicy;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ContactMapper {

	@Select("SELECT ADDRESSID FROM BLIS_ADDRESS WHERE ENTITYKEYID = #{organizationId} AND ENTITYID = 9")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	public List<Integer> getAddressIdsByOrgId(@Param("organizationId") Integer organizationId);

}
