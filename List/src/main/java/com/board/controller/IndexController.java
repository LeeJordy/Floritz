package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardDTO;
import com.board.domain.BoardService;
import com.board.mapper.BoardMapper;

@Controller
public class IndexController {
	
    @Autowired
    private BoardService boardService;
    
    @Autowired
	private  BoardMapper   boardMapper;
    
	
	// 단체 예약 리스트
	@RequestMapping("/List")
	public  ModelAndView  list() {
		List<BoardDTO>  boardList = boardMapper.getBoard();		
		System.out.println(boardList);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("brdList", boardList);
		mv.setViewName("board/list");
		return mv;
	}
	
	// 상세보기
	@RequestMapping("/View")
	public  ModelAndView   view(BoardDTO vo) {
		
		// bno 으로  view.jsp 필요한 정보를 조회
		BoardDTO boardDto =  boardMapper.viewBoard( vo ); 
		
		System.out.println( boardDto );
		
		ModelAndView  mv  =  new ModelAndView();
		mv.addObject("vo", boardDto);
		mv.setViewName("/board/view");
		return mv;
	}

	
}