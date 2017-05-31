package com.group2.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("md")
public class MemberDAO implements MemberService{
	@Autowired
	private MemberMapper mapper;
	@Override
	public int memberIdCheck(String email){
		
		return mapper.memberIdCheck(email);
	}
	@Override
	public String memberGetPassword(String email){
		return mapper.memberGetPassword(email);
	}
	@Override
	public void memberJoin(String firstName,String lastName,String email,String pwd) {
		mapper.memberJoin(firstName, lastName, email, pwd);
	}
	
	@Override
	public String memberFirstNameData(String email) {
		return mapper.memberFirstNameData(email);
	}
	
	@Override
	public String memberLastNameData(String email) {
		return mapper.memberLastNameData(email);
	}
	
	
}
