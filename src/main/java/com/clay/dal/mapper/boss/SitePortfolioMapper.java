package com.clay.dal.mapper.boss;

import java.util.List;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Options.FlushCachePolicy;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.StatementType;
import org.apache.ibatis.type.JdbcType;

import com.clay.domain.SitePortfolio;

@Mapper
public interface SitePortfolioMapper {

	@Select("SELECT * FROM PV_SITE_PORTFOLIO WHERE SITE_ID = #{siteId}")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	@Results(value = {
			@Result(property = "siteId", column = "site_id", javaType = String.class, jdbcType = JdbcType.VARCHAR),
			@Result(property = "webexUrl", column = "site_url", javaType = String.class, jdbcType = JdbcType.VARCHAR) })
	List<SitePortfolio> findBySiteId(@Param("siteId") String siteId);

	@InsertProvider(type = SitePortfolioProvider.class, method = "insertSitePortfolio")
	@Options(flushCache = FlushCachePolicy.TRUE, timeout = 20000)
	@SelectKey(before = true, keyProperty = "sitePortfolio.sitePortfolioId", keyColumn = "site_portfolio_id", resultType = Integer.class, statementType = StatementType.STATEMENT, statement = "select pv_object_s.nextval as sitePortfolioId from dual")
	void insertSitePortfolio(@Param("sitePortfolio") SitePortfolio sitePortfolio);

	@Update("UPDATE PV_SITE_PORTFOLIO P SET P.ATTRIBUTE1 = 'TODO' WHERE P.SITE_ID IN "
			+ " (SELECT S.SITEID FROM XXHGS_SITEINFO S WHERE S.REFNUM1 IN "
			+ " (SELECT T.BLISREFERENCE FROM PV_PROVISIONTICKET T WHERE T.PROVISIONSERVICEID IN "
			+ " (SELECT PS.PROVISIONSERVICEID FROM PV_PROVISIONSERVICE PS WHERE PS.ORDERID = #{orderId})))")
	void updateAttribute1AsTODOByOrderId(@Param("orderId") String orderId);

}
