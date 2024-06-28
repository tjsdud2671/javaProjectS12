package com.spring.javaProjectS12.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.javaProjectS12.service.MemberService;
import com.spring.javaProjectS12.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {


	@Autowired
	MemberService memberService;
	
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	JavaMailSender javaMailSender;
	
	//회원가입폼 보여주기
	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoinGet() {
		return"member/memberJoin";
	}

	//회원가입 처리
	@RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
	public String memberJoinPost(MemberVO vo) {
		System.out.println("memberVO : " + vo);
		
		// 이메일 중복체크
		if(memberService.getMemberEmailCheck(vo.getEmail()) != null)return"redirect:/message/emailCheckNo";
		
		// 비밀번호 암호화
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));
		
		int res = memberService.setMemberJoinOk(vo);
		
		if(res == 1) return "redirect:/message/memberJoinOk";
		else return "redirect:/message/memberJoinNo";
	}
	
	
	
	//로그인폼 보여주기
	@RequestMapping(value = "/memberLogin", method = RequestMethod.GET)
	public String memberLoginGet() {
		return"member/memberLogin";
	}

	//로그인 처리
	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String memberLoginPost(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(name="email", required =false) String email,
			@RequestParam(name="password", required =false) String password) {
			MemberVO vo = memberService.getMemberLoginCheck(email);
			
			if(vo != null && passwordEncoder.matches(password, vo.getPassword())) {
			String strLevel = "";
			if(vo.getLevel()==99)strLevel="관리자";
			if(vo.getLevel()==1)strLevel="정회원";
			
			session.setAttribute("sMid", email);
			session.setAttribute("sLastName", vo.getLastName());
			session.setAttribute("sName", vo.getName());
			session.setAttribute("sLevel", vo.getLevel());
			session.setAttribute("strLevel", strLevel);
			return"member/memberPage";
			}
		
	else {
		return"redirect:/message/memberLoginNo";
		
	}
		}
	
	@RequestMapping(value = "/memberPage", method = RequestMethod.GET)
	public String memberPageGet() {
		return"member/memberPage";
	}
	
	
	//로그아웃
	@RequestMapping(value = "/memberLogout", method = RequestMethod.GET)
	public String memberLogoutGet(HttpSession session) {
		String email = (String) session.getAttribute("sMid");
		session.invalidate();
		return "redirect:/message/memberLogout";
	}
	

	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public String addressGet() {
		return"member/address";
	}
	

}


