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
		}
		catch (Exception e) {
			System.out.println("애러 : "  + e.getMessage());
		}
		
		
		return a;
	}
	
	
	
}
