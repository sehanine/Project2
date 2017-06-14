package com.group2.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("main.do")
	public String main(Model model){
		model.addAttribute("main", "main/main.jsp");
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_main", "../web_components/scripts/scripts_main.jsp");
		model.addAttribute("footer", "../web_components/footer.jsp");
		return "main/main";
	}
	@RequestMapping("NOT_FOUND.do")
	public String not_found(Model model){
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_main", "../web_components/scripts/scripts_main.jsp");
		model.addAttribute("footer", "../web_components/footer.jsp");
		return "main/NOT_FOUND";
	}
}
