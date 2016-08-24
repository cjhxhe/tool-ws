package com.clay.dal.mapper.boss;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Options.FlushCachePolicy;

import com.clay.domain.ProvisionTicket;

@Mapper
public interface ProvisionTicketMapper {

	@Select("SELECT T.PROVISIONTICKETID, T.SERVICETYPE, T.TAGNAME, T.WEBEXURL FROM PV_PROVISIONTICKET T WHERE T.PROVISIONSERVICEID IN "
			+ " (SELECT S.PROVISIONSERVICEID FROM PV_PROVISIONSERVICE S WHERE S.ORDERID = #{orderId})")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	public List<ProvisionTicket> getProvisionTicketByOrderId(@Param("orderId") String orderId);
}
