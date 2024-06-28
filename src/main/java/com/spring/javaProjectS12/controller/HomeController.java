package com.spring.javaProjectS12.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/","/h"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}


	@RequestMapping(value="/imageUpload")
	public void imageUploadGet(MultipartFile upload,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/adminProduct/");
		String oFileName = upload.getOriginalFilename();
		
		  Date date = new Date(); SimpleDateFormat sdf = new
		  SimpleDateFormat("yyMMddHHmmss"); oFileName = sdf.format(date) + "_" +
		  oFileName;
		  
		  byte[] bytes = upload.getBytes(); FileOutputStream fos = new
		  FileOutputStream(new File(realPath+oFileName)); fos.write(bytes);
		  
		  PrintWriter out = response.getWriter(); String fileUrl =
		  request.getContextPath() + "/data/adminProduct/" + oFileName;
		  out.println("{\"originalFilename\":\""+oFileName+
		  "\",\"uploaded\":1,\"url\":\""+fileUrl+"\"}");
		  
		  out.flush(); fos.close();
		 
	}

	@RequestMapping(value="/imageUpload2")
	public void imageUpload2Get(MultipartFile upload,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/adminFeatures/");
		String oFileName = upload.getOriginalFilename();
		
		Date date = new Date(); SimpleDateFormat sdf = new
				SimpleDateFormat("yyMMddHHmmss"); oFileName = sdf.format(date) + "_" +
						oFileName;
				
				byte[] bytes = upload.getBytes(); FileOutputStream fos = new
						FileOutputStream(new File(realPath+oFileName)); fos.write(bytes);
						
						PrintWriter out = response.getWriter(); String fileUrl =
								request.getContextPath() + "/data/adminFeatures/" + oFileName;
						out.println("{\"originalFilename\":\""+oFileName+
								"\",\"uploaded\":1,\"url\":\""+fileUrl+"\"}");
						
						out.flush(); fos.close();
						
	}


}
