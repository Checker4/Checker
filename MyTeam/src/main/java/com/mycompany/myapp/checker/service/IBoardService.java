package com.mycompany.myapp.checker.service;

import java.util.HashMap;
import java.util.List;

import com.mycompany.myapp.checker.common.SearchCriteria;
import com.mycompany.myapp.checker.dto.BoardDto;

public interface IBoardService {
	
		//게시물 목록조회
		public List<BoardDto> getBoardList(SearchCriteria scri);
		
		//게시물 추가
		public void saveBoard(HashMap<String, String> paramMap);
		
		//게시물 상세내용 불러오기 
		public BoardDto getBoardContent(int board_code);
		
		//게시물 업데이트 
		public void updateBoardSave(HashMap<String, String> paramMap);

		//게시물 삭제
		public void deleteBoard(int board_code);

		//총 게시글 개수 확인
		public int listCount() throws Exception;
		
		public int countSearch(SearchCriteria scri)throws Exception;
}
