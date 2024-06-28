package com.spring.javaProjectS12.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.javaProjectS12.dao.AdminProductDAO;
import com.spring.javaProjectS12.vo.AdminFeaturesVO;
import com.spring.javaProjectS12.vo.AdminProductVO;
@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminProductDAO adminProductDAO;
	
	@Override
	public int setAdminProductOk(AdminProductVO vo) {
		return adminProductDAO.setAdminProductOk(vo);
	}

	@Override
	public void imgCheck(String fname) {
		//         0         1         2         3         4         5
		//         012345678901234567890123456789012345678901234567890
		// <p><img src="/javaProjectS/data/ckeditor/231220120242_10.jpg" style="height:725px;
		// <p><img src="/javaProjectS/data/board/231220120242_10.jpg" style="height:725px;
		// <p><img src="/javaProjectS12/data/adminProduct/240105141059_ㅋ.jpg"></p>
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/");
		
		int position = 33;
		String nextImg = fname.substring(fname.indexOf("src=\"/") + position);
		boolean sw = true;
		
		while(sw) {
			String imgFile = nextImg.substring(0,nextImg.indexOf("\""));
			
			String origFilePath = realPath + "ckeditor/" + imgFile;
			String copyFilePath = realPath + "adminProduct/" + imgFile;
			
			fileCopyCheck(origFilePath, copyFilePath);		// ckeditor폴더의 그림파일을 adminProduct폴더위치로 복사처리한다.
			
			if(nextImg.indexOf("src=\"/") == -1) sw = false;
			else nextImg = nextImg.substring(nextImg.indexOf("src=\"/") + position);
		}
	}

	public void imgCheck2(String fname) {
		//         0         1         2         3         4         5
		//         012345678901234567890123456789012345678901234567890
		// <p><img src="/javaProjectS/data/ckeditor/231220120242_10.jpg" style="height:725px;
		// <p><img src="/javaProjectS/data/board/231220120242_10.jpg" style="height:725px;
		// <p><img src="/javaProjectS12/data/adminProduct/240105141059_ㅋ.jpg"></p>
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/");
		
		int position = 33;
		String nextImg = fname.substring(fname.indexOf("src=\"/") + position);
		boolean sw = true;
		
		while(sw) {
			String imgFile = nextImg.substring(0,nextImg.indexOf("\""));
			
			String origFilePath = realPath + "ckeditor/" + imgFile;
			String copyFilePath = realPath + "adminFeatures/" + imgFile;
			
			fileCopyCheck(origFilePath, copyFilePath);		// ckeditor폴더의 그림파일을 adminProduct폴더위치로 복사처리한다.
			
			if(nextImg.indexOf("src=\"/") == -1) sw = false;
			else nextImg = nextImg.substring(nextImg.indexOf("src=\"/") + position);
		}
	}

	// 파일을 복사처리한다.
	private void fileCopyCheck(String origFilePath, String copyFilePath) {
		try {
			FileInputStream fis = new FileInputStream(new File(origFilePath));
			FileOutputStream fos = new FileOutputStream(new File(copyFilePath));
			
			byte[] bytes = new byte[2048];
			int cnt = 0;
			while((cnt = fis.read(bytes)) != -1) {
			  fos.write(bytes, 0, cnt);
			}
			fos.flush();
			fos.close();
			fis.close();			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}




	@Override
	public int setAdminFeaturestOk(AdminFeaturesVO vo) {
		return adminProductDAO.setAdminFeaturestOk(vo);
	}

	@Override
	public List<AdminFeaturesVO> getFeaturesList() {
		return adminProductDAO.getFeaturesList();
	}

	@Override
	public List<AdminProductVO> getContentList(int idx) {
		return adminProductDAO.getContentList(idx);
	}

	@Override
	public List<AdminProductVO> getNewPartList() {
		return adminProductDAO.getNewPartList();
	}
	
	@Override
	public List<AdminProductVO> getPartList(String part) {
		return adminProductDAO.getPartList(part);
	}
	
	@Override
	public List<AdminProductVO> getPartList2(String part) {
		return adminProductDAO.getPartList2(part);
	}

	@Override
	public AdminProductVO getProductContent(int idx) {
		return  adminProductDAO.getProductContent(idx);
	}

	@Override
	public void imgDelete(String fname) {
		//         0         1         2         3         4         5
		//         012345678901234567890123456789012345678901234567890
		// <p><img src="/javaProjectS/data/board/231220120242_10.jpg" style="height:725px;
		// <p><img alt="" src="/javaProjectS12/data/adminProduct/240115012841_LAZY 3.webp" style="height:750px; width:600px" /></p>
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/");
		
		int position = 39;
		String nextImg = fname.substring(fname.indexOf("src=\"/") + position);
		
		System.out.println("nextImg : " + nextImg);
		
		boolean sw = true;
		
		while(sw) {
			String imgFile = nextImg.substring(0,nextImg.indexOf("\""));
			
			String origFilePath = realPath + "adminProduct/" + imgFile;
			
			fileDelete(origFilePath);		// board폴더의 그림파일을 삭제처리한다.
			
			if(nextImg.indexOf("src=\"/") == -1) sw = false;
			else nextImg = nextImg.substring(nextImg.indexOf("src=\"/") + position);
		}		
	}

	private void fileDelete(String origFilePath) {
		File delFile = new File(origFilePath);
		if(delFile.exists()) delFile.delete();		
	}

	@Override
	public int setProductDelete(int idx) {
		return adminProductDAO.setProductDelete(idx);
	}

	@Override
	public List<AdminFeaturesVO> getFeaturesContent(int idx) {
		return adminProductDAO.getFeaturesContent(idx);
	}

	@Override
	public AdminProductVO getProductInfo(int idx) {
		return adminProductDAO.getProductInfo(idx);
	}




}
