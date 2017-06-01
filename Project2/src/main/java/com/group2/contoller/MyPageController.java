package com.group2.contoller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.group2.mypage.MyPageService;
import com.group2.mypage.MyPageVO;

@Controller
public class MyPageController {
	@Resource(name="myd")
	private MyPageService service;
	
	@RequestMapping("mypage.do")
	public String mypage(Model model, HttpSession session){
		String email = (String) session.getAttribute("email");
		String con = service.ContentCheck(email);
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
		
		
		model.addAttribute("css_mypage", "../web_components/css/css_mypage.jsp");
		model.addAttribute("scripts_mypage", "../web_components/scripts/scripts_mypage.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		return "member/mypage";
	}
	@RequestMapping("mypage-update.do")
	public String mypageUpdate(Model model,HttpSession session){
		String email = (String) session.getAttribute("email");
		service.ContentUpdate(email);
		return "member/mypage-update";
	}
}
