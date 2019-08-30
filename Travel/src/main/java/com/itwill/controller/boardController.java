package com.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class boardController {
	
	// http://localhost:8080/myapp/index
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpSession session) {
		System.out.println("/MemberController GET index() ");

		return "team_project/index";
	}
	
	// http://localhost:8080/myapp/index2
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public String index2(HttpSession session) {
		System.out.println("/MemberController GET index() ");

		return "team_project/index2";
	}

	// http://localhost:8080/myapp/board
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(HttpSession session) {
		System.out.println("/MemberController GET board() ");

		return "team_project/board";
	}

	// http://localhost:8080/myapp/community
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String community(HttpSession session) {
		System.out.println("/MemberController GET community() ");

		return "team_project/community";
	}

	// http://localhost:8080/myapp/qna
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna(HttpSession session) {
		System.out.println("/MemberController GET qna() ");

		return "team_project/qna";
	}
	
	// http://localhost:8080/myapp/login	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session) {
		System.out.println("/MemberController GET login() ");

		return "team_project/member/loginForm";
	}
	
	// http://localhost:8080/myapp/flight	
	@RequestMapping(value = "/flight", method = RequestMethod.GET)
	public String flight(HttpSession session) {
		System.out.println("/MemberController GET flight() ");

		return "team_project/flight/flightsearch";
	}
}
