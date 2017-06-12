package com.group2.mypage;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.context.request.SessionScope;

public interface MyPageMapper {
	
	@Select("SELECT content FROM mypage WHERE email=#{email, jdbcType=VARCHAR}")
	public String ContentCheck(String email); // content불러오기
	
	@Insert("INSERT INTO mypage "
			+ "VALUES(#{content,jdbcType=VARCHAR},#{email,jdbcType=VARCHAR})")
	public void ContentInsert(@Param("content")String content,@Param("email")String email);
	
	@Update("UPDATE mypage SET content=#{content} "
			+ "WHERE email=#{email, jdbcType=VARCHAR}")
	public void ContentUpdate(@Param("content")String content,@Param("email")String email);
	
	//mypage Image Insert
	@Insert("INSERT INTO ImageUpload "
			+ "VALUES(#{email, jdbcType=VARCHAR},SYSDATE,#{filename, jdbcType=VARCHAR},#{filesize, jdbcType=VARCHAR},#{filecount, jdbcType=VARCHAR})")
	public void mypageImageInsert(MyPageVO uploadForm);
	
	//mypage Image ContentData
	@Select("SELECT email,regdate,filename,filesize,filecount "
			+ "FROM ImageUpload "
			+ "WHERE email=#{email, jdbcType=VARCHAR}")
	public ImageVO mypageImagecontentData(String email);
}
