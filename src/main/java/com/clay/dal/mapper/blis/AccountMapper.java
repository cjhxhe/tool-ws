package com.clay.dal.mapper.blis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Options.FlushCachePolicy;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AccountMapper {

	@Select("SELECT AG.FIRSTNAME, AG.LASTNAME, AG.AGENTID, AG.STATUS, AG.PRIMARYTEAMID, ASS.AGENTASSIGNMENTID, ASS.ASSIGNMENTTYPEID"
			+ " FROM BLIS_AGENT AG, BLIS_ACCOUNT ACCOUNT, BLIS_AGENTASSIGNMENT ASS"
			+ " WHERE ACCOUNT.ACCOUNTID = #{accountId} AND ACCOUNT.STATUS != 'Deleted' AND (ASS.ASSIGNMENTTYPEID = 1 OR ASS.ASSIGNMENTTYPEID = 2)"
			+ " AND ASS.ENTITYID = 3 AND ASS.STATUS = 'Active' AND ASS.KEYID = ACCOUNT.ACCOUNTID AND AG.AGENTID = ASS.AGENTID")
	@Options(useCache = true, flushCache = FlushCachePolicy.FALSE, timeout = 10000)
	public List<Map<String, String>> getCMNameByPSRID(@Param("accountId") String accountId);

}
