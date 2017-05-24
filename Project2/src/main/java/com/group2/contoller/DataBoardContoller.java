package com.group2.contoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.group2.board.DataBoardDAO;
import com.group2.board.DataBoardVO;

@Controller
public class DataBoardContoller {

	@Autowired
	private DataBoardDAO dao;
	
	@RequestMapping("board/board-list.do")
	public String databoard_list(String page,Model model){
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
		
		return "board/board-list";
	}
	
}
