package com.group2.mypage;

import org.apache.ibatis.annotations.Select;

public interface MyPageMapper {
	
	@Select("SELECT content FROM mypage "
			+ "WHERE email=#{email, jdbcType=VARCHAR}")
	public String ContentCheck(String email); // content�ҷ�����

}
