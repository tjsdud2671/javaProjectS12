package com.spring.javaProjectS12.service;

import java.util.List;

import com.spring.javaProjectS12.vo.AdminFeaturesVO;
import com.spring.javaProjectS12.vo.AdminProductVO;

public interface AdminService {
	public int setAdminProductOk(AdminProductVO vo);

	public void imgCheck(String fname);
	public void imgCheck2(String fname);

	public int setAdminFeaturestOk(AdminFeaturesVO vo);

	public List<AdminFeaturesVO> getFeaturesList();

	public List<AdminProductVO> getContentList(int idx);

	public List<AdminProductVO> getNewPartList();

	public List<AdminProductVO> getPartList(String part);
	
	public List<AdminProductVO> getPartList2(String part);

	public AdminProductVO getProductContent(int idx);

	public void imgDelete(String fname);

	public int setProductDelete(int idx);

	public List<AdminFeaturesVO> getFeaturesContent(int idx);

	public AdminProductVO getProductInfo(int idx);


	


}
