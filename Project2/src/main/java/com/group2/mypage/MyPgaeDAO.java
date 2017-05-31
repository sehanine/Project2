package com.group2.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("myd")
public class MyPgaeDAO implements MyPageService{
	@Autowired
	private MyPageMapper mapper;
	
	@Override
	public String ContentCheck(String email) {
		return mapper.ContentCheck(email);
	}
}
