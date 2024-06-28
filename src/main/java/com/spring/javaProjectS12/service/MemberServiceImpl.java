package com.spring.javaProjectS12.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.javaProjectS12.dao.MemberDAO;
import com.spring.javaProjectS12.vo.InquiryVO;
import com.spring.javaProjectS12.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public int setMemberJoinOk(MemberVO vo) {
		return memberDAO.setMemberJoinOk(vo);
	}

	@Override
	public MemberVO getMemberEmailCheck(String email) {
		return memberDAO.getMemberEmailCheck(email);
	}

	@Override
	public MemberVO getMemberLoginCheck(String email) {
		return memberDAO.getMemberEmailCheck(email);
	}


	@Override
	public int setInquiryOK(InquiryVO vo) {
		return memberDAO.setInquiryOK(vo);
	}

	@Override
	public List<InquiryVO> getContactList() {
		return memberDAO.getContactList();
	}




}
