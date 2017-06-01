package com.group2.member;

public interface MemberService {
	public int memberIdCheck(String email);
	public String memberGetPassword(String id);
	public void memberJoin(String firstName,String lastName,String email,String pwd);
	public String memberFirstNameData(String email);
	public String memberLastNameData(String email);
}
















