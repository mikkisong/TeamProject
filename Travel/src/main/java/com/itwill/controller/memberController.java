package com.itwill.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwill.service.MemberService;

@Controller
public class memberController {
	
	@Inject
	private MemberService memberService;
	
	// http://localhost:8080/myapp/index	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpSession session) {
		System.out.println("/Controller2 GET index() ");

		return "team_project/index";
	}

	
	// http://localhost:8080/myapp/board
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(HttpSession session) {
		System.out.println("/Controller2 GET board() ");

		return "team_project/board";
	}
	
}
