package com.mycompany.myapp.checker.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.myapp.checker.common.Criteria;
import com.mycompany.myapp.checker.common.SearchCriteria;
import com.mycompany.myapp.checker.dto.BoardDto;

@Repository
public class BoardDaoImpl implements IBoardDao {

	//SqlSessionTemplate 선언
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//게시물 리스트 조회
	@Override
	public List<BoardDto> getBoardList(SearchCriteria scri) {
		List<BoardDto> BoardDtoList = new ArrayList<BoardDto>();
		BoardDtoList = sqlSession.selectList("boardMapper.getBoardList", scri);
		return BoardDtoList;
	}
	
	//게시물 추가
	@Override
	public void saveBoard(HashMap<String, String> paramMap) {
		sqlSession.insert("boardMapper.saveBoard",paramMap);
	}

	//게시물 상세페이지
	@Override
	public BoardDto getBoardContent(int board_code) {
		BoardDto boardDto = sqlSession.selectOne("boardMapper.getBoardContent",board_code);
		return boardDto;
	}

	//게시물 업데이트
	@Override
	public void updateBoardSave(HashMap<String, String> paramMap) {
		sqlSession.update("boardMapper.updateBoardSave", paramMap);
	}

	//게시물 삭제
	@Override
	public void deleteBoard(int board_code) {
		sqlSession.delete("boardMapper.deleteBoard",board_code);
	}
	
	@Override
	public void updateBoardCount(int board_code) {
		sqlSession.update("boardMapper.updateBoardCount",board_code);	
	}	

	@Override
	public int listCount() throws Exception {
		
		return sqlSession.selectOne("boardMapper.listCount");
	}

	@Override
	public int countSearch(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("boardMapper.countSearch",scri);
	}
	
}
