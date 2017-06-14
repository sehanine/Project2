package com.group2.contoller;

import java.io.Console;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.SessionScope;

import com.group2.member.MemberService;
//import com.group2.member.MemberVO;
import com.group2.mypage.MyPageService;


@Controller
public class MemberController {
	@Resource(name="md")
	private MemberService service;

	@RequestMapping("login.do")
	public String member_login(String email, String pwd, Model model,HttpSession session){
		int count=service.memberIdCheck(email);
		String res="";
		String firstName="";
		String lastName="";
		if(count==0){
			res="noid";
		}else{
			String db_pwd=service.memberGetPassword(email);
			if(db_pwd.equals(pwd)){
				res="ok";
				firstName=service.memberFirstNameData(email);
				lastName=service.memberLastNameData(email);
				System.out.println("¼º:"+lastName);
				System.out.println("ÀÌ¸§:"+firstName);
				session.setAttribute("email", email);
				session.setAttribute("firstName", firstName);
				session.setAttribute("lastName", lastName);
				
				
			}else{
				res="nopwd";
			}
		}
		model.addAttribute("res", res);
		return "member/login_ok";
	}
	
	@RequestMapping("logout.do")
	public String member_logout(HttpSession session){
		session.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping("memberJoin.do")
	public String member_join(String firstName,String lastName,String email,String pwd1,String pwd2,Model model){
		int count=service.memberIdCheck(email);
		String res="";
		
		if(firstName==""||lastName==""||email==""||pwd1==""||pwd2==""){
			res="noInput";
		}else if(count>0){
			res="idJungbok";
		}else if(!(pwd1.equals(pwd2))){
			res="pwdNotSame";
		}else{
			res="ok";
			service.memberJoin(firstName,lastName,email,pwd1);
		}
		model.addAttribute("res", res);
		return "member/join_ok";
	}
	
}
