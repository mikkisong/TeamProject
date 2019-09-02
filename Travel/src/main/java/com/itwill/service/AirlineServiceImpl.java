package com.itwill.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;

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
		String Cookie = "";
		String Referer = "";
		
		try {
			Response res = (Response)Jsoup.connect("http://www.ttang.com/index.do")
					.referrer("http://www.ttang.com/index.do")
					.userAgent("Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36")
					.timeout(0)
					.method(Method.POST)
					.execute(); 
			
			Map<String, String> cookies = res.cookies();
			Iterator<String> mapIter = cookies.keySet().iterator();
	 
			while(true) {
        		String key = mapIter.next();
        		String value = cookies.get(key);
 
        		Cookie = Cookie + key + "=" + value;

        		if(!mapIter.hasNext()) {
        			break;
        		} else {
        			Cookie = Cookie + "; ";
        		}
        	}
			
			// referer 받는 법 추가 해야함
			
			
			Document doc = Jsoup.connect(url)
			         .header("Accept","application/xml, text/xml, */*; q=0.01")
			         .header("Accept-Encoding","gzip, deflate")
			         .header("Accept-Language","ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7")
			         .header("Cache-Control","no-cache")
			         .header("Connection","keep-alive")
			         .header("Content-Length","361")
			         .header("Content-Type","application/x-www-form-urlencoded; charset=UTF-8")
			         .header("Cookie",Cookie)
			         .header("Host","airbooking.ttang.com")
			         .header("Origin","http://airbooking.ttang.com")
			         .header("Pragma","no-cache")
			         .header("Referer","http://airbooking.ttang.com/booking/newBkRealTimeSearchCar.lts")
			         .header("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36")
			         .header("X-Requested-With","XMLHttpRequest")
			         .data("STEP","L")
			         .data("startlocal","Y")
			         .data("trip","RT")
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
			int fare;
			for(int i = 0; i < airlines.size(); i++) {
				AirlineBean bean2 = new AirlineBean();
				
				bean2.setTrip(trip);
				bean2.setDate(date);
				time = DTime.get(i).toString() + "-" + ATime.get(i).toString();
				bean2.setTime(time);
				bean2.setCount(count);
				bean2.setComp(comp);
				bean2.setAirline(airlines.get(i).toString());
				fare = Integer.parseInt(DSF.get(i).toString()) - Integer.parseInt(FUEL.get(i).toString()) + Integer.parseInt(TAX.get(i).toString());
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
		
		return dao.getCode(city);
	}
	
	
	
	
}
