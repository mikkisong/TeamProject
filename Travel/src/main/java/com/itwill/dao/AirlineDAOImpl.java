package com.itwill.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AirlineDAOImpl implements AirlineDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.itwillbs.mapper.airlineMapper";
	
	
}
