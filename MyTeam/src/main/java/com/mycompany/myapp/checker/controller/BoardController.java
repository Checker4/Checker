package com.mycompany.myapp.checker.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.myapp.checker.common.PageMaker;
import com.mycompany.myapp.checker.common.SearchCriteria;
import com.mycompany.myapp.checker.dto.BoardDto;
import com.mycompany.myapp.checker.service.BoardServiceImpl;

@Controller
public class BoardController {

	// 서비스 객체
	@Autowired
	private BoardServiceImpl boardServiceImpl;
		
	/*
	 * //게시판 리스트 전체보기
	 * 
	 * @RequestMapping(value = "/board/getBoardList", method =RequestMethod.GET )
	 * public String getBoardList(@ModelAttribute("cri") Criteria cri, Model model)
	 * throws Exception { List<BoardDto> boardList =
	 * boardServiceImpl.getBoardList(cri); model.addAttribute("list",boardList);
	 * 
	 * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
	 * pageMaker.setTotalCount(boardServiceImpl.listCount());
	 * model.addAttribute("pageMaker", pageMaker);
	 * 
	 * return "checker/board/getBoardList"; }
	 */
	
	//게시판 리스트 전체보기
	@RequestMapping(value = "/board/getBoardList", method =RequestMethod.GET )
	public String getBoardList(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		
		List<BoardDto> boardList = boardServiceImpl.getBoardList(scri);
		model.addAttribute("list",boardList);
		
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(scri);
		 //pageMaker.setTotalCount(boardServiceImpl.listCount());
		 pageMaker.setTotalCount(boardServiceImpl.countSearch(scri));
		 model.addAttribute("pageMaker", pageMaker);
		
		return "checker/board/getBoardList";			
	}
		
	//게세판 글쓰기 페이지 이동
	@RequestMapping(value = "/board/writeBoard")
	public String writeBoard() {		
		return "checker/board/writeBoard";	
	}
	
	//게시판 글쓰기 저장
	@RequestMapping(value = "/board/saveBoard")
	public String saveBoard(@RequestParam HashMap<String, String> paramMap) {		
		boardServiceImpl.saveBoard(paramMap);	
		return "redirect:/board/getBoardList";	
	}
	
	//게시판 상세페이지
	@RequestMapping(value = "/board/getBoardContent")
	public String getBoardContent(@RequestParam("board_code") int board_code, Model model) {	
		BoardDto boardDto = boardServiceImpl.getBoardContent(board_code);
		model.addAttribute("boardDto",boardDto);	
		return "checker/board/getBoardContent";	
	}
	
	//게시판 수정페이지
	@RequestMapping(value = "/board/updateBoard")
	public String updateBoard(@RequestParam("board_code") int board_code, Model model) {	
		BoardDto boardUpdateDto = boardServiceImpl.getBoardContent(board_code);
		model.addAttribute("boardUpdateDto",boardUpdateDto);	
		return "checker/board/modifyBoard";	
	}
	
	// 게시판 업데이트
	@RequestMapping(value = "/board/updateBoardSave")
	public String updateBoardSave(@RequestParam HashMap<String, String> paramMap,
			RedirectAttributes redirectAttributes) {
		
		// 리다이렉트 파라미터 설정
		redirectAttributes.addAttribute("board_code", paramMap.get("board_code"));
		boardServiceImpl.updateBoardSave(paramMap);
		
		return "redirect:/board/getBoardList";
	}
	
	// 게시판 삭제
	@RequestMapping(value = "/board/deleteBoard")
	public String deleteBoard(@RequestParam("board_code") int board_code) {
		boardServiceImpl.deleteBoard(board_code);
		return "redirect:/board/getBoardList";
	}
}
