package com.itwill.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;

import org.jsoup.Connection;
import org.jsoup.Connection.Method;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;
import org.jsoup.nodes.Document;

import org.springframework.stereotype.Service;
import com.itwill.dao.AirlineDAO;
import com.itwill.domain.AirlineBean;
import com.itwill.domain.FlightSearchBean;

@Service
public class AirlineServiceImpl implements AirlineService {
	
	@Inject
	private AirlineDAO dao;

	@Override
	public List<AirlineBean> flightSearch(FlightSearchBean bean) {
		System.out.println("AirlineServiceImpl flightSearch()");
		List<AirlineBean> flightSearchList = new ArrayList<AirlineBean>(); 
		
		String url = "http://airbooking.ttang.com/booking/newBkRealTimeSearchCar.lts";
		String Cookie = "_ga=GA1.2.201665897.1563859509; _fbp=fb.1.1563859508760.1886791602; _gid=GA1.2.442915978.1567386844; _gat=1; ";
		
		try {
			
//			Response res = (Response)Jsoup.connect("http://www.ttang.com")
//					.method(Method.POST)
//					.execute(); 
//			
//			Map<String, String> cookies = res.cookies();
//	 
//			System.out.println(cookies);

			Connection.Response res = Jsoup.connect(url)
						.method(Method.POST)
						.execute();

			Map<String, String> cookies = res.cookies();
			for(int i = 0; i < cookies.size(); i++) {
				Cookie = Cookie + "JSESSIONID=" + cookies.get("JSESSIONID");
			}
			
			
//			Cookie = Cookie + cookies2.ge
			
			
			Document doc = Jsoup.connect(url)
//			         .header("Accept","application/xml, text/xml, */*; q=0.01")
			         .header("Accept-Encoding","gzip, deflate")
			         .header("Accept-Language","ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7")
//			         .header("Cache-Control","no-cache")
			         .header("Connection","keep-alive")
			         .header("Content-Length","361")
			         .header("Content-Type","application/x-www-form-urlencoded; charset=UTF-8")
			         .header("Cookie",Cookie)
			         .header("Host","airbooking.ttang.com")
//			         .header("Origin","http://airbooking.ttang.com")
//			         .header("Referer","http://airbooking.ttang.com/booking/newBkRealTimeSearchCar.lts?md_seg=3&chd=0&availCheckIn=20190907&charset=euc-kr&adt=1&url=http%3A%2F%2Fairbooking.ttang.com%2Fbooking%2FnewBkRealTimeSearchCar.lts&arr2=&arr1=&depdate2=&arr0=HKG&txt_arr2=&startlocal=Y&txt_arr1=&depdate1=&txt_arr0=%C8%AB%C4%E1&depdate0=20190909&inf=0&open=N&trip=RT&dep2=&dep1=&comp=Y&dep0=PUS&txt_dep2=&txt_dep1=&txt_dep0=%BA%CE%BB%EA&retdate=20190910")
			         .header("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36")
//			         .header("X-Requested-With","XMLHttpRequest")
			         .data("STEP","L")
			         .data("startlocal","Y")
			         .data("trip",bean.getTrip())
			         .data("adt",bean.getAdultquantity())
			         .data("chd",bean.getChildquantity())
			         .data("inf",bean.getBabyquantity())
			         .data("comp",bean.getComp())
			         .data("dep0",bean.getCode_dep())
			         .data("dep1","")
			         .data("dep2","")
			         .data("arr0",bean.getCode_arr())
			         .data("arr1","")
			         .data("arr2","")
			         .data("txt_dep0",bean.getDep())
			         .data("txt_dep1","")
			         .data("txt_dep2","")
			         .data("txt_arr0",bean.getArr())
			         .data("txt_arr1","")
			         .data("txt_arr2","")
			         .data("depdate0",bean.getDate_dep())
			         .data("depdate1","")
			         .data("depdate2","")
			         .data("retdate",bean.getDate_arr())
			         .data("open","N")
			         .data("openval","")
			         .data("keyWord","N")
			         .data("md_seg","3")
			         .data("ParmValue","")
			         .data("theURL","")
			         .data("localChk","")
			         .data("chksts","on")
			         .data("chknvia","on")
			         .data("chkcar","on")
			         .data("chkfare","on")
			         .data("chkidt","on")
			         .ignoreContentType(true)
			         .parser(Parser.xmlParser())
			         .post();
					
			Elements airlines = doc.select("CRD"); // 항공사
			
//          for (Element e : elements) {
//              System.out.println(e.text());
//          }
			
			Elements DSF = doc.select("DSF"); 
			Elements FUEL = doc.select("FUEL"); 
			Elements TAX = doc.select("TAX"); // DSF - FUEL + TAX = fare
			
			Elements DTime = doc.select("DTime"); // 출발 시간
			Elements ATime = doc.select("ATime"); // 도착 시간 
			
			String trip = bean.getDep() + "-" + bean.getArr();
			String date = bean.getDate_dep() + "-" + bean.getDate_arr();
			String time;
			String count = bean.getAdultquantity() + "/" + bean.getChildquantity() + "/" + bean.getBabyquantity();
			String comp = bean.getComp();
			int fare = 0;
				
			for(int i = 0; i < airlines.size(); i++) {
				AirlineBean bean2 = new AirlineBean();
				
				bean2.setTrip(trip);
				bean2.setDate(date);
				String dTime = DTime.get(i).text();
				String aTime = ATime.get(i).text();
				
				dTime = dTime.substring(dTime.length()-4, dTime.length());
				aTime = aTime.substring(aTime.length()-4, aTime.length());
				time = dTime + "-" + aTime;
				
				bean2.setTime(time);
				bean2.setCount(count);
				bean2.setComp(comp);
				bean2.setAirline(airlines.get(i).text());
				
				String DSF_1 = DSF.get(i).text().split("/")[0];
				double FUEL_1 = Double.parseDouble(FUEL.get(i).text());
				double TAX_1 = Double.parseDouble(TAX.get(i).text());

				fare = Integer.parseInt(DSF_1) - (int)FUEL_1 + (int)TAX_1;
				
				bean2.setFare(fare);
				
				flightSearchList.add(bean2);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
			e.toString();
			System.out.println(e.getMessage());
		}
		
		return flightSearchList;
	}

	@Override
	public String getCode(String city) {
		System.out.println("AirlineServiceImpl getCode()");
		
		String a="";
		try{
			a=dao.getCode(city);
		} catch (Exception e) {
			System.out.println("애러 : "  + e.getMessage());
		}
		
		return a;
	}

	@Override
	public int getMaxNum() {
		int a = dao.getNum();
		
		return a;
	}

	@Override
	public void insertAirBooking(AirlineBean airBooking) {
		dao.insertAirBooking(airBooking);
	}

	@Override
	public List<AirlineBean> getBookingList(String member_id) {
		
		List<AirlineBean> airBookingList = dao.getBookingList(member_id);
		
		return airBookingList;
	}

	@Override
	public void cancel(int index) {
		dao.cancel(index);
	}
	
	
	
	
}
