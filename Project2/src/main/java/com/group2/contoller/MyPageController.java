package com.group2.contoller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String mypageUpdate(String content,Model model,HttpSession session){
		String email = (String) session.getAttribute("email");
		String res = "";
		if(content.length() >=300){
			 res = null;
			 return "member/mypage-update";	 
		}else{
			res = content;
		}
		service.ContentUpdate(content,email);
		model.addAttribute("res", res);
		return "member/mypage-update";
	}
	@RequestMapping("mypage-insert.do")
	public String mypageInsert(String content,Model model,HttpSession session){
		String email = (String) session.getAttribute("email");
		service.ContentInsert(content, email);
		return "member/mypage-insert";
	}
}
