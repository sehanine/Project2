package com.group2.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BlogController {
	@RequestMapping("new_post.do")
	public String new_post(Model model){
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		return "blog/new_post";
	}

	@RequestMapping("new_trip.do")
	public String new_trip(Model model){
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_main", "../web_components/scripts/scripts_main.jsp");
		return "blog/new_trip";
	}

}
