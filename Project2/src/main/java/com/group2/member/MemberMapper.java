package com.group2.member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {

	@Select("Select COUNT(*) FROM tripMember "
			+"WHERE email=#{email}")
	public int memberIdCheck(String email); //아이디가 있는지 체크
	
	@Select("SELECT pwd FROM tripMember "
			+"WHERE email=#{email}")
	public String memberGetPassword(String id); //아이디의 패스워드 가져오기
	
	@Insert("INSERT INTO tripMember(firstName,lastName,email,pwd) "
			+ "VALUES(#{firstName},#{lastName},#{email},#{pwd})")
	public void memberJoin(@Param("firstName")String firstName,@Param("lastName")String lastName,@Param("email")String email,@Param("pwd")String pwd);	//회원가입
	
	@Select("SELECT firstName FROM tripMember "//tripMember의 firstName 가져오기
			+ "WHERE email=#{email,jdbcType=VARCHAR}")
	public String memberFirstNameData(String email);
	
	@Select("SELECT lastName FROM tripMember "//tripMember의 lastName 가져오기
			+ "WHERE email=#{email,jdbcType=VARCHAR}")
	public String memberLastNameData(String email);
	
	
}

