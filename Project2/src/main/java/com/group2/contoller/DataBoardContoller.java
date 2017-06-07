package com.group2.contoller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.group2.board.DataBoardDAO;
import com.group2.board.DataBoardVO;


@Controller
public class DataBoardContoller {

	@Autowired
	private DataBoardDAO dao;
	
//	@RequestMapping("board.do")
//	public String board(Model model){
//		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
//		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
//		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
//		//model.addAttribute("board-list", "../board/board-list.jsp");
//		
//		return "board/board";
//	}
	@RequestMapping("board.do")
	public String databoard_list(String page,Model model){
		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		if(page==null)
			page="1";

		int curpage = Integer.parseInt(page);
		
		Map map = new HashMap();
		int rowSize=10;
		int start = (curpage*rowSize)-(rowSize-1);
		int end = curpage*rowSize;
		
		map.put("start", start);
		map.put("end", end);
		
		List<DataBoardVO> list = dao.databoardListData(map);
		int totalpage = dao.databoardTotalPage();
		
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", totalpage);
		model.addAttribute("start", start);
		model.addAttribute("end", end);


		return "board/board";
	}
	
	@RequestMapping("board-content.do")
	public String board_content(int no,Model model){
		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		DataBoardVO vo = dao.boardContentData(no);
		model.addAttribute("vo",vo);
		return "board/board-content";
	}
	
	@RequestMapping("board-insert.do")
	public String databoard_insert(Model model){
		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		return "board/board-insert";
	}
	
	@RequestMapping("insert_ok.do")
	public String databoard_insert_ok(DataBoardVO uploadForm)
	throws Exception{
		
		List<MultipartFile> list=uploadForm.getFiles();
		String temp="";
		String temp1="";
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
		}else{
			uploadForm.setFilename("");
			uploadForm.setFilesize("");
			uploadForm.setFilecount(0);
		}
		
		dao.databoardInsert(uploadForm);
		return "redirect:board.do";
	}
	
	@RequestMapping("board-delete.do")
	public String databoardDelete(int no,Model model){
		model.addAttribute("css_blog", "../web_components/css/css_blog.jsp");
		model.addAttribute("nav_bar", "../web_components/nav_bar.jsp");
		model.addAttribute("scripts_blog", "../web_components/scripts/scripts_blog.jsp");
		
		model.addAttribute("no", no);
		return "board/board-delete";
	}
	@RequestMapping("delete_ok.do")
	public String databoardDeleteOk(int no,String pwd,Model model){
		DataBoardVO vo=dao.databoardDeleteData(no);
		
		boolean bCheck=false;
		if(pwd.equals(vo.getPwd())){
			bCheck=true;
			if(vo.getFilecount()!=0){
				StringTokenizer st=
						new StringTokenizer(vo.getFilename(), ",");
				while(st.hasMoreTokens()){
					File file=new File("c:\\download\\"+st.nextToken());
					file.delete();
				}
			}//end if
			dao.databoardDelete(no);
		}else{
			bCheck=false;
		}
		model.addAttribute("bCheck", bCheck);
		return "board/delete_ok";
	}
	
}
