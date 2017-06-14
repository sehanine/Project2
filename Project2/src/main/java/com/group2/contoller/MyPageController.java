package com.group2.contoller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.group2.mypage.MyPageService;

@Controller
public class MyPageController {
	@Resource(name="myd")
	private MyPageService service;
	
	@RequestMapping("mypage.do")
	public String mypage(Model model, HttpSession session){
		String email = (String) session.getAttribute("email");
		String con = service.ContentCheck(email);
		System.out.println("MyPageController con: " + con);
		System.out.println("MyPageController content: " + email);
		String check = "";
		
		if(con==null){
			check = null;
			session.setAttribute("check", check);
		}else{
			check = "OK";
			session.setAttribute("content", con);
			session.setAttribute("check", check);
		}
		model.addAttribute("check", check);
		
		System.out.println("MyPageController check:"+check);
		
		model.addAttribute("css_mypage", "../web_components/css/css_mypage.jsp");
		model.addAttribute("scripts_mypage", "../web_components/scripts/scripts_mypage.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		return "member/mypage";
	}
}
