package com.itwill.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwill.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO{
	//mybatis 객체생성 <= 자동주입
	@Inject
	private SqlSession sqlSession;
	// memberMapper 파일안에  namespace 이름 정의
	private static final String namespace="com.itwillbs.mapper.MemberMapper";
	
	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("MemberDAOImpl insert()");
		// mybatise  sql 구문 호출 실행
		sqlSession.insert(namespace+".insert",mb);
		
	}
}
