package com.group2.contoller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.group2.member.MemberService;
import com.group2.post.PostService;
import com.group2.post.PostVO;

@Controller
public class NavBarController {
	@Resource(name="md")
	private MemberService service;
	
	@Resource(name="pd")
	private PostService postService;
	
	private void add_attributes(Model model){
		model.addAttribute("css_components", "../web_components/css/css_components.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("footer", "../web_components/footer.jsp");
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
	@RequestMapping("festi.do")
	public String festi(Model model){
		add_attributes(model);
		add_cate_attributes(model);
		return "categories/festi";
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
	public String blog(int no, Model model, HttpSession session){
		

		
		String email = (String) session.getAttribute("email");
		model.addAttribute("footer", "../web_components/footer.jsp");
		if(email == null){
			model.addAttribute("css_components", "../web_components/css/css_components.jsp");
			model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
			model.addAttribute("scripts_main", "../web_components/scripts/scripts_main.jsp");
			
			return "main/NOT_FOUND";
		}
		
		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		
		PostVO vo = postService.getPostData(email, no);
		
		System.out.println("int no: " + no);
		System.out.println("owner: " + vo.getEmail());
		System.out.println("lang: " + vo.getLang());
		System.out.println("cate: " + vo.getCategory());
		System.out.println("org: " + vo.getOrganization());
		System.out.println("title: " + vo.getTitle());
		System.out.println("hash: " + vo.getHash());
		System.out.println("poster: " + vo.getPoster());
		System.out.println("pictures: " + vo.getTrip_pictures());
		System.out.println("itinerary: " + vo.getItinerary());
		System.out.println("host_serve: " + vo.getHost_serve());
		System.out.println("addr: " + vo.getAddr());
		System.out.println("cautions: " + vo.getCautions());
		System.out.println("participants: " + vo.getParticipants());
		System.out.println("cost: " + vo.getCost());
		session.setAttribute("postVO", vo);
		return "blog/single-post";
	}
	
	/*
	 * board
	 */
//	@RequestMapping("board.do")
//	public String board(Model model){
//		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
//		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
//		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
//		//model.addAttribute("board-list", "../board/board-list.jsp");
//		
//		return "board/board";
//	}

}

