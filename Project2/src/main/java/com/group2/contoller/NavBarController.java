package com.group2.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavBarController {
	
	private void add_attributes(Model model){
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
	}
	private void add_cate_attributes(Model model){
		model.addAttribute("scripts_categories", "../web_components/scripts/scripts_categories.jsp");
	}
	private void add_main_attributes(Model model){
		model.addAttribute("scripts_main", "../web_components/scripts/scripts_main.jsp");
	}
	/*
	 * categories
	 */
	@RequestMapping("accomodation.do")
	public String accomodation(Model model){
		add_attributes(model);
		add_cate_attributes(model);
		return "categories/accomodation";
	}
	@RequestMapping("meet-up.do")
	public String meetup(Model model){
		add_attributes(model);
		add_cate_attributes(model);
		return "categories/meet-up";
	}
	@RequestMapping("trip.do")
	public String trip(Model model){
		add_attributes(model);
		add_cate_attributes(model);
		return "categories/trip";
	}
	/*
	 * main
	 */
	@RequestMapping("page-login.do")
	public String login(Model model){
		add_attributes(model);
		add_main_attributes(model);
		return "member/page-login";
	}
	@RequestMapping("page-register.do")
	public String register(Model model){
		add_attributes(model);
		add_main_attributes(model);
		return "member/page-register";
	}
	/*
	 * blog
	 */
	@RequestMapping("single-post.do")
	public String blog(Model model){
		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		return "blog/single-post";
	}
	/*
	 * 	Member
	*/
	@RequestMapping("mypage.do")
	public String mypage(Model model){
		model.addAttribute("css_mypage", "../web_components/css/css_mypage.jsp");
		model.addAttribute("scripts_mypage", "../web_components/scripts/scripts_mypage.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		return "member/mypage";
	}
}