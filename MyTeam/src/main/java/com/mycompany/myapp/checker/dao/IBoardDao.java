package com.mycompany.myapp.checker.dao;

import java.util.HashMap;
import java.util.List;

import com.mycompany.myapp.checker.common.SearchCriteria;
import com.mycompany.myapp.checker.dto.BoardDto;

public interface IBoardDao {

	//게시물 목록조회
	public List<BoardDto> getBoardList(SearchCriteria scri)throws Exception;
	
	//게시물 추가
	public void saveBoard(HashMap<String, String> paramMap)throws Exception;
	
	//게시물 상세내용 불러오기
	public BoardDto getBoardContent(int board_code)throws Exception;
	
	//게시물 업데이트
	public void updateBoardSave(HashMap<String, String> paramMap)throws Exception;
	
	//게시물 삭제
	public void deleteBoard(int board_code)throws Exception;

	//게시물 조회수 증가
	public void updateBoardCount(int board_code)throws Exception;
		
	//총 게시글 개수 확인
	public int listCount() throws Exception;
	
	public int countSearch(SearchCriteria scri)throws Exception;

}
