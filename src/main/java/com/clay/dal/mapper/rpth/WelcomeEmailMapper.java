package com.clay.dal.mapper.rpth;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.StatementType;

@Mapper
public interface WelcomeEmailMapper {

	@Select("call sp_injectsitehostmapping(#{hgsSiteId}, #{enggSiteId}, #{langId})")
	@Options(statementType = StatementType.CALLABLE)
	void execWelcomeEmailSQL(@Param("hgsSiteId") Integer hgsSiteId, @Param("enggSiteId") Integer enggSiteId,
			@Param("langId") Integer langId);
}
