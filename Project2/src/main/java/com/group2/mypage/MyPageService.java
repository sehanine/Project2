package com.group2.mypage;

import org.apache.ibatis.annotations.Param;

public interface MyPageService {
	
	public String ContentCheck(String email);
	public void ContentUpdate(@Param("content")String content,@Param("email")String email);
	public void ContentInsert(@Param("content")String content,@Param("email")String email);
	
}
