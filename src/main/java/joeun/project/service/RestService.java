package joeun.project.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.RestDataDaoI;
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

@Service
public class RestService implements RestServiceI {

	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertData(List<API_bolgguriDto> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data.size():" + data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i));
			dao.insertData(data.get(i));
		}

	}

	@Override
	public void insertAPI_jalgguri(List<API_jalgguriDto> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data.size():" + data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i));
			dao.insertAPI_jalgguri(data.get(i));
		}
	}

	@Override
	public void insertAPI_mukgguri(List<API_mukgguriiDto> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data.size():" + data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i));
			dao.insertAPI_mukgguri(data.get(i));
		}
	}

	@Override
	public void insertAPI_cat_code(List<API_cat_code> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data.size():" + data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i));
			dao.insertAPI_cat_code(data.get(i));
		}
	}

	@Override
	public void insertAPI_area_code(List<API_cat_code> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data.size():" + data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i));
			dao.insertAPI_area_code(data.get(i));
		}
	}

	@Override
	public void insertAPI_sigungu_code(List<API_sigunguCodeDto> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data.size():" + data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i));
			dao.insertAPI_sigungu_code(data.get(i));
		}
	}

	@Override
	public void insertAPI_Introduce(API_introduceDto data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data: " + data);
		dao.insertAPI_introduce(data);
	}

	@Override
	public List<String> selectContentId() {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		return dao.selectContentId();
	}

	@Override
	public void insertAPI_IntroduceContentId(String contentId) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		dao.insertAPI_IntroduceContentId(contentId);

	}

	@Override
	public List<Integer> selectImageContentId() {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		return dao.selectImageContentId();
	}

	@Override
	public void insertAPI_contentImage(List<API_contentImageDto> data) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data: " + data);
		for(int i=0;i<data.size();i++) {
			System.out.println(data.get(i));
			dao.insertAPI_contentImage(data.get(i));	
		}

	}

	@Override
	public void insertAPI_imageContentIdNull(Integer contentId) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		dao.insertAPI_imageContentIdNull(contentId);
		
	}

	@Override
	public void insertAPI_common_contentIdNull(String contentId) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		dao.insertAPI_common_contentIdNull(contentId);
	}

	@Override
	public void insertAPI_common(API_commonDto dto) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data: " + dto);
		dao.insertAPI_common(dto);
	}

	@Override
	public List<String> selectCommonContentId() {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		return dao.selectCommonContentId();
	}

	@Override
	public List<API_contentIdType> selectCommonContentId2() {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		return dao.selectCommonContentId2();
	}

	@Override
	public List<String> intro14ContentId() {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		return dao.intro14ContentId();
	}

	@Override
	public void insertAPI_Intro14_null(String contentId) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data: " + contentId);
		dao.insertAPI_Intro14_null(contentId);
	}

	@Override
	public void insertAPI_Intro14(API_intro14Dto dto) {
		RestDataDaoI dao = sqlSession.getMapper(RestDataDaoI.class);
		System.out.println("data: " + dto);
		dao.insertAPI_Intro14(dto);
		
	}
}
