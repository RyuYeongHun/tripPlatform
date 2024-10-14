package joeun.project.dao;

import java.util.List;

import joeun.project.dto.API_bolgguriDto;
import joeun.project.dto.API_cat_code;
import joeun.project.dto.API_commonDto;
import joeun.project.dto.API_contentIdType;
import joeun.project.dto.API_contentImageDto;
import joeun.project.dto.API_intro14Dto;
import joeun.project.dto.API_introduceDto;
import joeun.project.dto.API_jalgguriDto;
import joeun.project.dto.API_mukgguriiDto;
import joeun.project.dto.API_sigunguCodeDto;

public interface RestDataDaoI {

	public void insertData(API_bolgguriDto data);

	public void insertAPI_jalgguri(API_jalgguriDto api_jalgguriDto);

	public void insertAPI_mukgguri(API_mukgguriiDto api_mukgguriiDto);

	public void insertAPI_cat_code(API_cat_code api_cat_code);

	public void insertAPI_area_code(API_cat_code api_cat_code);

	public void insertAPI_sigungu_code(API_sigunguCodeDto api_sigungu_code);

	public void insertAPI_introduce(API_introduceDto data);

	public List<String> selectContentId();
	
	public void insertAPI_IntroduceContentId(String contentId);

	public List<Integer> selectImageContentId();
	
	public void insertAPI_contentImage(API_contentImageDto contentImage);

	public void insertAPI_imageContentIdNull(Integer contentId);

	public void insertAPI_common_contentIdNull(String contentId);

	public void insertAPI_common(API_commonDto dto);

	public List<String> selectCommonContentId();

	public List<API_contentIdType> selectCommonContentId2();

	public List<String> intro14ContentId();

	public void insertAPI_Intro14_null(String contentid);

	public void insertAPI_Intro14(API_intro14Dto dto);

	


}
