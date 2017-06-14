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
	@Override
	public void ContentUpdate(String email,String content) {
		
		mapper.ContentUpdate(email, content);
	}
	@Override
	public void ContentInsert(String content, String email) {
		mapper.ContentInsert(content, email);
	}
	@Override
	public void mypageInsertImage(String email,String poster){
		mapper.insertImage(email, poster);
	}
	@Override
	public String mypageImageData(String email) {
		return mapper.mypageImageData(email);
	}
	
}
