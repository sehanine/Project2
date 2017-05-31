package com.group2.member;

import java.util.List;

import com.group2.mypage.MyPageVO;

public interface MemberService {
	public int memberIdCheck(String email);
	public String memberGetPassword(String id);
	public void memberJoin(String firstName,String lastName,String email,String pwd);
	public String memberFirstNameData(String email);
	public String memberLastNameData(String email);
	public MyPageVO getMypageVO(String email);
}
















