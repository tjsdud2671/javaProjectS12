package com.spring.javaProjectS12.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.javaProjectS12.vo.CartVO;
import com.spring.javaProjectS12.vo.InquiryVO;
import com.spring.javaProjectS12.vo.MemberVO;

public interface MemberDAO {

	public int setMemberJoinOk(@Param("vo") MemberVO vo);

	public MemberVO getMemberEmailCheck(@Param("email") String email);
	
	public MemberVO getMemberLoginCheck(@Param("email") String email);

	public List<InquiryVO> getInquiryList(@Param("idx")int idx);

	public int setInquiryOK(@Param("vo") InquiryVO vo);

	public List<InquiryVO> getContactList();

	public int setInsert(@Param("vo") CartVO vo);



	
}
