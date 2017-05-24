package com.group2.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

public interface DataBoardMapper {
	@Select("SELECT no,subject,name,regdate,hit,num "
			+"FROM (SELECT no,subject,name,regdate,hit,rownum as num "
			+"FROM (SELECT no,subject,name,regdate,hit "
			+"FROM multiBoard ORDER BY no DESC))"
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<DataBoardVO> databoardListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10) FROM multiBoard")
	public int databoardTotalPage();
}
