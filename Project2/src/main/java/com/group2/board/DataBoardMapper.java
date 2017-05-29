package com.group2.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface DataBoardMapper {
	@Select("SELECT no,subject,name,regdate,hit,num "
			+"FROM (SELECT no,subject,name,regdate,hit,rownum as num "
			+"FROM (SELECT no,subject,name,regdate,hit "
			+"FROM multiBoard ORDER BY no DESC))"
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<DataBoardVO> databoardListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10) FROM multiBoard")
	public int databoardTotalPage();
	
	@Update("UPDATE multiBoard SET "
			+"hit=hit+1 "
			+"WHERE no=#{no}")
	public void boardHitIncrement(int no); 	//조회수 1증가
	
	@Select("SELECT no,name,subject,content,regdate,hit "
			+"FROM multiBoard "
			+"WHERE no=#{no}")
	public DataBoardVO boardContentData(int no);
}
