package com.group2.member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {

	@Select("Select COUNT(*) FROM tripMember "
			+"WHERE email=#{email}")
	public int memberIdCheck(String email); //���̵� �ִ��� üũ
	
	@Select("SELECT pwd FROM tripMember "
			+"WHERE email=#{email}")
	public String memberGetPassword(String id); //���̵��� �н����� ��������
	
	@Insert("INSERT INTO tripMember(firstName,lastName,email,pwd) "
			+ "VALUES(#{firstName},#{lastName},#{email},#{pwd})")
	public void memberJoin(@Param("firstName")String firstName,@Param("lastName")String lastName,@Param("email")String email,@Param("pwd")String pwd);	//ȸ������
	
	@Select("SELECT firstName FROM tripMember "//tripMember�� firstName ��������
			+ "WHERE email=#{email,jdbcType=VARCHAR}")
	public String memberFirstNameData(String email);
	
	@Select("SELECT lastName FROM tripMember "//tripMember�� lastName ��������
			+ "WHERE email=#{email,jdbcType=VARCHAR}")
	public String memberLastNameData(String email);
	
	
}

