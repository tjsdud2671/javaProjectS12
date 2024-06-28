package com.spring.javaProjectS12.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.javaProjectS12.service.AdminService;
import com.spring.javaProjectS12.service.MemberService;
import com.spring.javaProjectS12.vo.AdminFeaturesVO;
import com.spring.javaProjectS12.vo.AdminProductVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value = "/adminProduct", method = RequestMethod.GET)
	public String adminProductGet() {
		return"admin/adminProduct";
	}

	
	@RequestMapping(value = "/adminPage", method = RequestMethod.GET)
	public String adminPageGet() {
		return "admin/adminPage";
	}
	@RequestMapping(value = "/adminLeft", method = RequestMethod.GET)
	public String adminLeftGet() {
		return "admin/adminLeft";
	}
	@RequestMapping(value = "/adminContent", method = RequestMethod.GET)
	public String adminContentGet() {
		return "admin/adminContent";
	}

	@RequestMapping(value = "/adminPage", method = RequestMethod.POST)
	public String adminPagePost() {
		
		return "admin/adminPage";
	}
	@RequestMapping(value = "/adminFeatures", method = RequestMethod.GET)
	public String adminFeaturesGet() {
		return "admin/adminFeatures";
	}
	

	@RequestMapping(value = "/adminFeatures", method = RequestMethod.POST)
	public String adminFeaturesPost(AdminFeaturesVO vo) {
		
		// 이미지가 저장되어 있다면, 저장된 이미지만 골라서 /resources/data/adminProduct/폴더에 저장시켜준다.
		if(vo.getFname().indexOf("src=\"/") != -1) adminService.imgCheck2(vo.getFname());
		
		// 이미지들의 모든 복사작업을 마치면, ckeditor폴더경로를 borad폴더 경로로 변경처리한다.('/data/ckeditor/' ==> 'data/board/')
		vo.setFname(vo.getFname().replace("/data/ckeditor/", "/data/adminFeatures/"));
		
		// content안의 내용정리가 끝나면 변경된 vo를 DB에 저장시켜준다.
		int res = adminService.setAdminFeaturestOk(vo);
		
		if(res == 1) return "redirect:/message/adminFeaturesOk";
		else return "redirect:/message/adminFeaturesNo";
	}

	
	@RequestMapping(value = "/adminProduct", method = RequestMethod.POST)
	public String adminProductPost(AdminProductVO vo) {
		
		// 이미지가 저장되어 있다면, 저장된 이미지만 골라서 /resources/data/adminProduct/폴더에 저장시켜준다.
		if(vo.getFname().indexOf("src=\"/") != -1) adminService.imgCheck(vo.getFname());
		
		// 이미지들의 모든 복사작업을 마치면, ckeditor폴더경로를 borad폴더 경로로 변경처리한다.('/data/ckeditor/' ==> 'data/board/')
		vo.setFname(vo.getFname().replace("/data/ckeditor/", "/data/adminProduct/"));
		
		// content안의 내용정리가 끝나면 변경된 vo를 DB에 저장시켜준다.
		int res = adminService.setAdminProductOk(vo);
		
		if(res == 1) return "redirect:/message/adminProductOk";
		else return "redirect:/message/adminProductNo";
	}

	@RequestMapping(value = "/productContent", method = RequestMethod.GET)
	public String productContentGet(Model model, int idx) {
		List<AdminProductVO> vos = adminService.getContentList(idx);
		model.addAttribute("idx",idx);
		model.addAttribute("vos",vos);
		return "admin/productContent";
	}
	
	@RequestMapping(value = "/featuresContent", method = RequestMethod.GET)
	public String featuresContentGet(Model model, int idx) {
		List<AdminFeaturesVO> vos = adminService.getFeaturesContent(idx);
		model.addAttribute("idx",idx);
		model.addAttribute("vos",vos);
		return "admin/featuresContent";
	}
	
	@RequestMapping(value ="/newPartList", method = RequestMethod.GET)
	public String newPartListGet(Model model) {
		
		List<AdminProductVO> vos = adminService.getNewPartList();
		
		model.addAttribute("vos",vos);
		return "admin/partList";
	}

	@RequestMapping(value ="/partList", method = RequestMethod.GET)
	public String partListGet(Model model , String part) {
		
		List<AdminProductVO> vos = adminService.getPartList(part);
		
		model.addAttribute("part:",part);
		model.addAttribute("vos",vos);
		return "admin/partList";
	}

	@RequestMapping(value ="/partList2", method = RequestMethod.GET)
	public String partListGet2(Model model , String part) {
		
		List<AdminProductVO> vos = adminService.getPartList2(part);
		
		model.addAttribute("part:",part);
		model.addAttribute("vos",vos);
		return "admin/partList";
	}

	@RequestMapping(value ="/featuresList", method = RequestMethod.GET)
	public String featurestGet(Model model) {
		
		List<AdminFeaturesVO> vos = adminService.getFeaturesList();
		
		model.addAttribute("vos",vos);
		System.out.println("vos:"+vos);
		return "admin/featuresList";
	}
	
	@RequestMapping(value ="/shipping", method = RequestMethod.GET)
	public String shippingGet() {
		
		return "admin/shipping";
	}
	@RequestMapping(value ="/size", method = RequestMethod.GET)
	public String sizeGet() {
		
		return "admin/size";
	}

	@RequestMapping(value ="/careers", method = RequestMethod.GET)
	public String careersGet() {
		
		return "admin/careers";
	}
	@RequestMapping(value ="/legal", method = RequestMethod.GET)
	public String legalGet() {
		
		return "admin/legal";
	}

	@RequestMapping(value ="/chapters", method = RequestMethod.GET)
	public String chaptersGet() {
		
		return "admin/chapters";
	}
	
	@ResponseBody
	@RequestMapping(value = "/productDelete", method = RequestMethod.POST)
	public String boardDeletePost( int idx) {

		AdminProductVO vo = adminService.getProductInfo(idx);
		if (vo.getFname().indexOf("src=\"/") != -1) adminService.imgDelete(vo.getFname());
		
		adminService.setProductDelete(idx);
		
		return "";
	}

	/*
	 * // 상품 삭제(사진 먼저 삭제하고 DB 삭제)
	 * 
	 * @SuppressWarnings("deprecation")
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/dbShopDeleteOk", method = RequestMethod.POST)
	 * public String dbShopDeleteOkPost(HttpServletRequest request, int idx) {
	 * 
	 * // 게시글에 사진이 있다면 서버에 존재하는 사진을 먼저 삭제. DbProductVO vo =
	 * dbShopService.getDbShopContent(idx); if (vo.getContent().indexOf("src=\"/")
	 * != -1) dbShopService.imgDelete(vo.getContent());
	 * 
	 * // 썸네일 파일(fSName) 삭제처리하기 String uploadPath =
	 * request.getRealPath("/resources/data/dbShop/product/"); String realPathFile =
	 * uploadPath + vo.getFSName(); new File(realPathFile).delete();
	 * 
	 * 
	 * // DB에서 게시글 삭제 dbShopService.setDbShopDelete(idx);
	 * 
	 * return ""; }
	 */
	
}
