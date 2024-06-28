package com.spring.javaProjectS12.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MessageController {

	@RequestMapping(value = "/message/{msgFlag}", method = RequestMethod.GET)
	public String msgGet(@PathVariable String msgFlag, Model model) {
		
		if(msgFlag.equals("memberJoinOk")) {
			model.addAttribute("msg", "회원가입 완료 되었습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("memberJoinNo")) {
			model.addAttribute("msg", "회원가입에 실패하였습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("emailCheckNo")) {
			model.addAttribute("msg", "이미 사용중인 이메일 입니다.");
			model.addAttribute("url", "member/memberJoin");
		}
		else if(msgFlag.equals("adminProductOk")) {
			model.addAttribute("msg", "상품 등록 완료하였습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("adminProductNo")) {
			model.addAttribute("msg", "상품 등록 실패하였습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("error")) {
			model.addAttribute("msg", "실패");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("adminFeaturesOk")) {
			model.addAttribute("msg", "게시글 등록 완료되었습니다.");
			model.addAttribute("url", "admin/featuresList");
		}
		else if(msgFlag.equals("adminFeaturesNo")) {
			model.addAttribute("msg", "게시글 등록 실패하였습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("memberLoginOk")) {
			model.addAttribute("msg","로그인 되었습니다.");
			model.addAttribute("url", "member/memberPage");
		}
		else if(msgFlag.equals("memberLoginNo")) {
			model.addAttribute("msg", "이메일 또는 비밀번호가 잘못되었습니다.");
			model.addAttribute("url", "member/memberLogin");
		}
		else if(msgFlag.equals("memberLogout")) {
			model.addAttribute("msg", "로그아웃 되었습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("inquiryOK")) {
			model.addAttribute("msg", "문의사항 등록이 완료되었습니다.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("productDeleteOk")) {
			model.addAttribute("msg", "상품이 삭제되었습니다..");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("productDeleteNo")) {
			model.addAttribute("msg", "상품 삭제 실패");
			model.addAttribute("url", "/");
		}
		return"include/message";
	}
}
