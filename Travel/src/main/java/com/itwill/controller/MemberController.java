package com.itwill.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwill.service.MemberService;

@Controller
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	// http://localhost:8080/myapp/memberInfo	
//	@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
//	public String memberInfo(HttpSession session) {
//		System.out.println("/MemberController GET memberInfo() ");
//
//		return "/team_project/member/memberInfo";
//	}
	
	// http://localhost:8080/myapp/join
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(HttpSession session) {
		System.out.println("/MemberController GET join() ");

		return "/team_project/tour/member/joinForm";
	}
	
	// http://localhost:8080/myapp/login
	@RequestMapping(value = "/tourlogin", method = RequestMethod.GET)
	public String tourlogin(HttpSession session) {
		System.out.println("/MemberController GET tourlogin() ");

		return "/team_project/tour/member/loginForm";
	}
	
	// http://localhost:8080/myapp/memberInfo
	@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
	public String memberInfo(HttpSession session) {
		System.out.println("/MemberController GET memberInfo() ");

		return "/team_project/tour/member/memberInfo";
	}
	
	

	
}
