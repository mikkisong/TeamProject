package com.itwill.service;

import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwill.dao.MemberDAO;
import com.itwill.domain.MemberBean;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("MemberServiceImpl insertMember()");
		// 디비작업파일  부모=자식
		// 패키지 com.itwillbs.dao
//		MemberDAO memberDAO=new MemberDAOImpl();
//		memberDAO.insertMember(mb);
		mb.setReg_date(new Timestamp(System.currentTimeMillis()));
		memberDAO.insertMember(mb);
		
	}
	
}
