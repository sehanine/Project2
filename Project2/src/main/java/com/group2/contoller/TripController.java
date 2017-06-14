package com.group2.contoller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.group2.post.PostService;
import com.group2.post.PostVO;

@Controller
public class TripController {
	@Resource(name="pd")
	private PostService service;
	
	final int FINALIZE_TRIP = 17;
	@RequestMapping("trip_content.do")
	public String new_post(String mode){
		if(mode == null){
			mode = "1";
		}
		int mode_ = Integer.parseInt(mode);
		//System.out.println("mode: " + mode_);
		
	
		return "blog/new_trip/new_trip_" + mode_;
	
	}
	
	@RequestMapping("fin_trip.do")
	public String new_post_01(
			String email, String trip_pictures,
			String lang, String cate,
			String org, String title,
			String hash, String itinerary,
			String host_serve, String addr,
			String cautions, String participants,
			String cost, String poster,
			String about_program){
		/*
		System.out.println("owner: " + email);
		System.out.println("lang: " + lang);
		System.out.println("cate: " + cate);
		System.out.println("org: " + org);
		System.out.println("title: " + title);
		System.out.println("hash: " + hash);
		System.out.println("poster: " + poster);
		System.out.println("pictures: " + trip_pictures);
		System.out.println("itinerary: " + itinerary);
		System.out.println("host_serve: " + host_serve);
		System.out.println("addr: " + addr);
		System.out.println("cautions: " + cautions);
		System.out.println("participants: " + participants);
		System.out.println("cost: " + cost);
		*/
		//poster, pictures
		service.insertTrip(email, lang, cate, org, title, hash, poster, itinerary, host_serve, trip_pictures, about_program, addr, cautions, participants, cost);
		return "blog/new_trip/fin_trip";
	}
//	model.addAttribute("new_trip_01", "../blog/new_trip/new_trip_1.jsp");
//	model.addAttribute("new_trip_02", "../blog/new_trip/new_post_02.jsp");
//	model.addAttribute("new_trip_03", "../blog/new_trip/new_post_03.jsp");
//	model.addAttribute("new_trip_04", "../blog/new_trip/new_post_04.jsp");
//	model.addAttribute("new_trip_05", "../blog/new_trip/new_post_05.jsp");
//	model.addAttribute("new_trip_06", "../blog/new_trip/new_post_06.jsp");
//	model.addAttribute("new_trip_07", "../blog/new_trip/new_post_07.jsp");
//	model.addAttribute("new_trip_08", "../blog/new_trip/new_post_08.jsp");
//	model.addAttribute("new_trip_09", "../blog/new_trip/new_post_09.jsp");
//	model.addAttribute("new_trip_10", "../blog/new_trip/new_post_10.jsp");
//	model.addAttribute("new_trip_11", "../blog/new_trip/new_post_11.jsp");
//	model.addAttribute("new_trip_12", "../blog/new_trip/new_post_12.jsp");
//	model.addAttribute("new_trip_13", "../blog/new_trip/new_post_13.jsp");
//	model.addAttribute("new_trip_14", "../blog/new_trip/new_post_14.jsp");
//	model.addAttribute("new_trip_15", "../blog/new_trip/new_post_15.jsp");
//	model.addAttribute("new_trip_16", "../blog/new_trip/new_post_16.jsp");
//	model.addAttribute("fin_trip", "../blog/new_trip/fin_trip.jsp");
	
}
