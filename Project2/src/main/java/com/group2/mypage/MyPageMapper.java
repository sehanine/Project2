package com.group2.mypage;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface MyPageMapper {
	
	@Select("SELECT content FROM mypage "
			+ "WHERE email=#{email, jdbcType=VARCHAR}")
	public String ContentCheck(String email); // content불러오기

	@Insert("INSERT INTO mypage "
			+ "VALUES(#{content,jdbcType=VARCHAR},#{email,jdbcType=VARCHAR})")
	public void ContentInsert(@Param("content")String content,@Param("email")String email);
	
	@Update("UPDATE mypage SET content=#{content} "
			+ "WHERE email=#{email, jdbcType=VARCHAR}")
	public void ContentUpdate(@Param("content")String content,@Param("email")String email);
	
	@Insert("INSERT INTO imageUpload(email,poster) "
			+ "VALUES(#{email, jdbcType=VARCHAR},"
			+ 		 "#{poster ,jdbcType=VARCHAR})")
	public void insertImage(@Param("email")String email,@Param("poster")String poster);
	
	@Select("SELECT poster FROM imageUpload "
			+ "WHERE email=#{email,jdbcType=VARCHAR}")
	public String mypageImageData(String email);
	
}
