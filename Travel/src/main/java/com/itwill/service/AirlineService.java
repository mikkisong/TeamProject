package com.itwill.service;

import java.util.List;

import com.itwill.domain.AirlineBean;
import com.itwill.domain.FlightSearchBean;

public interface AirlineService {

	List<AirlineBean> flightSearch(FlightSearchBean bean);

	String getCode(String dep);

	int getMaxNum();

	void insertAirBooking(AirlineBean airBooking);

	List<AirlineBean> getBookingList(String member_id);

	void cancel(int index);

}
