package com.spring.javaProjectS12.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.javaProjectS12.vo.AdminFeaturesVO;
import com.spring.javaProjectS12.vo.AdminProductVO;
import com.spring.javaProjectS12.vo.CartVO;

public interface AdminProductDAO {

	public int setAdminProductOk(@Param("vo") AdminProductVO vo);

	public AdminProductVO getTeeList(@Param("idx") int idx);

	public int setAdminFeaturestOk(@Param("vo") AdminFeaturesVO vo);

	public List<AdminFeaturesVO> getFeaturesList();

	public List<AdminProductVO> getContentList(@Param("idx")int idx);

	public List<AdminProductVO> getNewPartList();

	public List<AdminProductVO> getPartList(@Param("part") String part);

	public List<AdminProductVO> getPartList2(@Param("part") String part);

	public AdminProductVO getProductContent(@Param("idx") int idx);

	public int setProductDelete(@Param("idx") int idx);

	public List<AdminFeaturesVO> getFeaturesContent(@Param("idx") int idx);

	public AdminProductVO getProductInfo(@Param("idx") int idx);




}
