package com.itwill.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwill.domain.AirlineBean;
import com.itwill.domain.FlightSearchBean;
import com.itwill.service.AirlineService;


@Controller
public class AirlineController {
	
	@Inject
	private AirlineService service;
	
	// http://localhost:8080/myapp/flight	
	@RequestMapping(value = "/flight", method = RequestMethod.GET)
	public String flight(HttpSession session, HttpServletRequest request, Model model, FlightSearchBean bean) {
		System.out.println("/MemberController GET flight() ");

		System.out.println(bean.getDep());
		System.out.println(bean.getArr());
		
		String code_dep = service.getCode(bean.getDep());
		String code_arr = service.getCode(bean.getArr());
		
		bean.setCode_dep(code_dep);
		bean.setCode_arr(code_arr);
		
//		List<AirlineBean> flightSearchList = service.flightSearch(bean);
//		model.addAttribute("flightSearchList", flightSearchList);
		
		return "team_project/flight/flightsearch";
	}

	
	
}
