package com.itwill.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwill.domain.AirlineBean;

@Repository
public class AirlineDAOImpl implements AirlineDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.itwill.mapper.AirlineMapper"; //com.itwill.mapper.AirlineMapper
	
	@Override
	public String getCode(String city) {
		System.out.println("AirlineDAOImpl getCode()");	
		
		System.out.println(city);
		String a="";
		try{
			a=sqlSession.selectOne(namespace+".getCode",city);
		} catch (Exception e) {
			System.out.println("애러 : "  + e.getMessage());
		}
		return a;
	}

	@Override
	public int getNum() {
		int a = 1;
		
		try {
			// 예매내역이 n 개 있으면 n+1 을 넘겨준다
			a = sqlSession.selectOne(namespace+".getNum");
			a += 1;
		} catch (Exception e) {
			// 예매내역이 없으면(select가 null이면) 1을 넘겨준다
			System.out.println("애러 : "  + e.getMessage());
		}
		
		return a;
	}

	@Override
	public void insertAirBooking(AirlineBean airBooking) {
		sqlSession.insert(namespace+".insertAirBooking",airBooking);
	}

	@Override
	public List<AirlineBean> getBookingList(String member_id) {
		
		List<AirlineBean> airBookingList = null;
		
		try {
			airBookingList = sqlSession.selectList(namespace+".getBookingList",member_id);
		} catch (Exception e) {
			System.out.println("애러 : "  + e.getMessage());
		}
		
		return airBookingList;
	}

	@Override
	public void cancel(int index) {
		sqlSession.insert(namespace+".cancel",index);
	}
	
	
	
}
