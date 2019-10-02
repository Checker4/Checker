package com.mycompany.myapp.checker.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.checker.common.SearchCriteria;
import com.mycompany.myapp.checker.dao.BoardDaoImpl;
import com.mycompany.myapp.checker.dto.BoardDto;

@Service
public class BoardServiceImpl implements IBoardService{

	//BoardDaoImpl 선언
	@Autowired
	private BoardDaoImpl boardDaoImpl;
	
	//게시물 리스트 조회
	@Override
	public List<BoardDto> getBoardList(SearchCriteria scri) {
		return boardDaoImpl.getBoardList(scri);
	}

	//게시물 추가
	@Override
	public void saveBoard(HashMap<String, String> paramMap) {
		boardDaoImpl.saveBoard(paramMap);
	}

	//게시물 상세페이지
	@Override
	public BoardDto getBoardContent(int board_code) {
		boardDaoImpl.updateBoardCount(board_code);
		return boardDaoImpl.getBoardContent(board_code);
	}

	//게시물 업데이트
	@Override
	public void updateBoardSave(HashMap<String, String> paramMap) {
		boardDaoImpl.updateBoardSave(paramMap);		
	}

	//게시물 삭제
	@Override
	public void deleteBoard(int board_code) {
		boardDaoImpl.deleteBoard(board_code);
	}

	//총 게시글 개수 확인
	@Override
	public int listCount() throws Exception {
		return boardDaoImpl.listCount();
	}

	@Override
	public int countSearch(SearchCriteria scri) throws Exception {
		return boardDaoImpl.countSearch(scri);
	}

}
