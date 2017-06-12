package com.group2.contoller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.group2.mypage.ImageVO;
import com.group2.mypage.MyPageService;
import com.group2.mypage.MyPageVO;
import com.group2.mypage.MyPgaeDAO;


@Controller
public class MyPageController {
	@Resource(name="myd")
	private MyPageService service;
	private MyPgaeDAO dao;
	
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
	@RequestMapping("myPageImages/mypageImageInsert.do")
	public String mypageImageInsert(){
		return "member/mypage";
	}
	
	@RequestMapping("myPageImages/mypageImageInsert_ok.do")
	public String mypageImageInsert_ok(MyPageVO uploadForm)
	
	throws Exception{
			
		List<MultipartFile> list=uploadForm.getFiles();
		String temp="";
		String temp1="";
		System.out.println("list1:"+list);
		
		if(list !=null && list.size()>0){
			for(MultipartFile mf:list){
				String fn=mf.getOriginalFilename();
				String ext=fn.substring(fn.lastIndexOf('.')+1);
				String save=fn.substring(0, fn.lastIndexOf('.'))
						+System.currentTimeMillis()+"."+ext;
				File file=new File("C:\\download\\"+save);
				mf.transferTo(file);
				temp+=save+",";
				temp1+=file.length()+",";
			}
			uploadForm.setFilename(temp.substring(0, temp.lastIndexOf(',')));
			uploadForm.setFilesize(temp1.substring(0, temp1.lastIndexOf(',')));
			uploadForm.setFilecount(list.size());
			System.out.println(1);
		}else{
			System.out.println(2);
			uploadForm.setFilename("");
			uploadForm.setFilesize("");
			uploadForm.setFilecount(0);
		}
		System.out.println("getFilename:"+uploadForm.getFilename());
		System.out.println("getFilecount:"+uploadForm.getFilecount());
		System.out.println("getEmail:"+uploadForm.getEmail());
		System.out.println("getFilesize:"+uploadForm.getFilesize());
		
		service.mypageImageInsert(uploadForm);
		
		return "member/myPageImages/mypageImageInsert_ok";
	}
	@RequestMapping("/databoard/content.do")
	public String databoard_content(HttpSession session,Model model){
		String email = (String) session.getAttribute("email");
		ImageVO vo=service.mypageImagecontentData(email);
		
		if(vo.getFilecount()!=0){
			StringTokenizer st=
					new StringTokenizer(vo.getFilename(), ",");
			List<String> list=new ArrayList<String>();
			while(st.hasMoreTokens()){
				list.add(st.nextToken());
			}
			vo.setNameList(list);
		}
		model.addAttribute("vo", vo);
		
		return "member/mypage";
	}
}
