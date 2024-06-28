package com.spring.javaProjectS12.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.javaProjectS12.service.MemberService;
import com.spring.javaProjectS12.vo.InquiryVO;

@Controller
@RequestMapping("/contact")
public class ContactController {

	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactGet() {
		return"contact/contact";
	}
	@RequestMapping(value = "/contactList", method = RequestMethod.GET)
	public String contactListGet(Model model) {
		List<InquiryVO>vos=memberService.getContactList();
		model.addAttribute("vos",vos);
		return"contact/contactList";
	}
	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String contactPost(InquiryVO vo) {
		System.out.println("InquiryVO : " + vo);
		memberService.setInquiryOK(vo);
		return"redirect:/message/inquiryOK";
	}

}
