package com.group2.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DataBoardDAO {
	@Autowired
	private DataBoardMapper mapper;
	
	public List<DataBoardVO> databoardListData(Map map){
		return mapper.databoardListData(map);
	}
	
	public int databoardTotalPage(){
		return mapper.databoardTotalPage();   
	}
	public DataBoardVO boardContentData(int no){
		mapper.boardHitIncrement(no);
		return mapper.boardContentData(no);
	}
	public void databoardInsert(DataBoardVO vo){
		mapper.boardInsert(vo);
	}
	
	public DataBoardVO databoardDeleteData(int no){
		return mapper.databoardDeleteData(no);
	}
	
	public void databoardDelete(int no){
		mapper.databoardDelete(no);
	}
}
