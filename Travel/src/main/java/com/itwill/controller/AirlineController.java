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

		// 한글로 입력받은 도시이름의 코드네임을 가져온다
		// bean에 입력
		String code_dep = service.getCode(bean.getDep());
		String code_arr = service.getCode(bean.getArr());
		bean.setCode_dep(code_dep);
		bean.setCode_arr(code_arr);
		
		// 원래는 bean에 같이 입력받아야 함
		// 입력폼 수정 해서 받아오면 삭제할꺼임
		bean.setTrip("RT");
		bean.setComp("Y");
		
		// 검색조건에 맞는 항공권들 crawling 
		List<AirlineBean> flightSearchList = service.flightSearch(bean);
		
		// 리스트 가져와서 model 에 add
		model.addAttribute("flightSearchList", flightSearchList);
		
		return "team_project/flight/flightsearch";
	}

	
	// http://localhost:8080/myapp/airBooking	
	@RequestMapping(value = "/airBooking", method = RequestMethod.GET)
	public String airBooking(HttpSession session, HttpServletRequest request, Model model) {
		// 예매버튼을 눌렀을 때 예매내역페이지로 이동한다.
		// 마이페이지에서 바로 갈때는 새로 만들어야 할 듯 
		// 아니면 같이 쓰는 방법을 생각해보겠다.
		
		AirlineBean airBooking = (AirlineBean) request.getAttribute("bean");
		
		// 세션에서 사용자 이름 가져오기 
		String member_id = (String)session.getAttribute("id");
		airBooking.setMember_id(member_id);
		
		// index select 해오기
		// 예매내역 없으면 index = 1, 있으면 MaxNum + 1 
		int index = service.getMaxNum();
		airBooking.setIndex(index);

		// 예매내역에 insert 하기 
		service.insertAirBooking(airBooking);
		
		// 예매목록 가서 가장 해당 아이디 의 예매내역 가져오기 select 
		List<AirlineBean> bookingList = service.getBookingList(member_id);
		
		// 예매내역 리스트 가져와서 model에 add하기
		model.addAttribute("bookingList", bookingList);
		
		return "team_project/member/airBooking";
	}
	
	@RequestMapping(value = "/cancel", method = RequestMethod.GET)
	public String cancel(HttpSession session, HttpServletRequest request, Model model) {
		// 마이페이지의 예매내역페이지에서 예매취소 버튼 클릭시 이동
		// 해당 항공권 예매를 취소한다.
		// 취소한 후 다시 예매내역페이지로 이동

		// 취소할 항공권의 index 값 가져오기
		int index = Integer.parseInt(request.getParameter("index"));
		
		// 항공권 취소취소
		service.cancel(index);
		
		// 세션에서 사용자 이름 가져오기 
		String member_id = (String)session.getAttribute("id");
		
		// 예매목록 가서 가장 해당 아이디 의 예매내역 가져오기 select 
		List<AirlineBean> bookingList = service.getBookingList(member_id);
		
		// 예매내역 리스트 가져와서 model에 add하기
		model.addAttribute("bookingList", bookingList);
		
		return "team_project/member/airBooking";
	}
	
	
}
