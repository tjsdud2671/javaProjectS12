package com.spring.javaProjectS12.service;

import java.util.List;

import com.spring.javaProjectS12.vo.InquiryVO;
import com.spring.javaProjectS12.vo.MemberVO;
public interface MemberService {
	public int setMemberJoinOk(MemberVO vo);

	public MemberVO getMemberEmailCheck(String email);

	public MemberVO getMemberLoginCheck(String email);


	public int setInquiryOK(InquiryVO vo);

	public List<InquiryVO> getContactList();



}
