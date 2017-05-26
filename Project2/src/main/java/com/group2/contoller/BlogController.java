package com.group2.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BlogController {
	@RequestMapping("new_trip.do")
	public String new_trip(Model model){
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_main", "../web_components/scripts/scripts_main.jsp");
		model.addAttribute("new_trip_01", "../blog/new_trip/new_post_01.jsp");
		model.addAttribute("new_trip_02", "../blog/new_trip/new_post_02.jsp");
		model.addAttribute("new_trip_03", "../blog/new_trip/new_post_03.jsp");
		model.addAttribute("new_trip_04", "../blog/new_trip/new_post_04.jsp");
		model.addAttribute("new_trip_05", "../blog/new_trip/new_post_05.jsp");
		model.addAttribute("new_trip_06", "../blog/new_trip/new_post_06.jsp");
		model.addAttribute("new_trip_07", "../blog/new_trip/new_post_07.jsp");
		model.addAttribute("new_trip_08", "../blog/new_trip/new_post_08.jsp");
		model.addAttribute("new_trip_09", "../blog/new_trip/new_post_09.jsp");
		model.addAttribute("new_trip_10", "../blog/new_trip/new_post_10.jsp");
		model.addAttribute("new_trip_11", "../blog/new_trip/new_post_11.jsp");
		model.addAttribute("new_trip_12", "../blog/new_trip/new_post_12.jsp");
		model.addAttribute("new_trip_13", "../blog/new_trip/new_post_13.jsp");
		model.addAttribute("new_trip_14", "../blog/new_trip/new_post_14.jsp");
		model.addAttribute("new_trip_15", "../blog/new_trip/new_post_15.jsp");
		model.addAttribute("new_trip_16", "../blog/new_trip/new_post_16.jsp");
		model.addAttribute("fin_trip", "../blog/new_trip/fin_trip.jsp");
		return "blog/new_trip";
	}

}
