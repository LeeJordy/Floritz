package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	
	// http://localhost
	@RequestMapping("/")
	public  ModelAndView   home( String name) {
		//String  name = "안유진";
		ModelAndView  mv = new ModelAndView();
		mv.addObject("irum", name);
		mv.setViewName("home");
		return mv;   // /WEB-INF/views/ home .jsp
	}
	
	
	// http://localhost/test?str=hello
	@RequestMapping("/test")
	@ResponseBody
	public  String  test(String str) {
		String header = str;
		return "<h2>" + header + "</h2>";		
	}
	
	//---------------------------------
	// 페이지 이동
	@RequestMapping("/rest")
	public  ModelAndView  rest() {
		ModelAndView  mv = new ModelAndView();
		mv.setViewName("board/board");  // /WEB-INF/views/ board/board .jsp
		return mv;
	}
	

	// rest2 : ajax 방식
	@RequestMapping("/rest2")
	public  ModelAndView  rest2() {
		ModelAndView mv  = new ModelAndView("board/board2");		
		return mv;
	} 
	

	
	
		
	// 조회
	
	// 사용자중복확인 페이지이동
	//@RequestMapping("/")
	
}





