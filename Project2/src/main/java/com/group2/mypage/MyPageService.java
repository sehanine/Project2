package com.group2.mypage;

import org.apache.ibatis.annotations.Param;

public interface MyPageService {
	
	public String ContentCheck(String email);
	public String ContentUpdate(@Param("email")String email);
}
