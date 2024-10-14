package joeun.project.service;

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

public interface RestServiceI {

	void insertData(List<API_bolgguriDto> data);

	void insertAPI_jalgguri(List<API_jalgguriDto> data);

	void insertAPI_mukgguri(List<API_mukgguriiDto> data);

	void insertAPI_cat_code(List<API_cat_code> data);

	void insertAPI_area_code(List<API_cat_code> data);

	void insertAPI_sigungu_code(List<API_sigunguCodeDto> data);

	void insertAPI_Introduce(API_introduceDto data);

	List<String> selectContentId();

	void insertAPI_IntroduceContentId(String ContentId);

	List<Integer> selectImageContentId();

	void insertAPI_contentImage(List<API_contentImageDto> data);

	void insertAPI_imageContentIdNull(Integer integer);

	void insertAPI_common_contentIdNull(String contentId);

	void insertAPI_common(API_commonDto dto);

	List<String> selectCommonContentId();

	List<API_contentIdType> selectCommonContentId2();

	List<String> intro14ContentId();

	void insertAPI_Intro14_null(String contentId);

	void insertAPI_Intro14(API_intro14Dto dto);

}
