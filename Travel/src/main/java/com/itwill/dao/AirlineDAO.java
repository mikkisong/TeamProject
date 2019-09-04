package com.itwill.dao;

import java.util.List;

import com.itwill.domain.AirlineBean;

public interface AirlineDAO {

	String getCode(String city);

	int getNum();

	void insertAirBooking(AirlineBean airBooking);

	List<AirlineBean> getBookingList(String member_id);

	void cancel(int index);

	
}
