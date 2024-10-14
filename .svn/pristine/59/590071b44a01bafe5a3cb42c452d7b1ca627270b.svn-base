package joeun.project.service;

import org.apache.ibatis.annotations.Param;

import joeun.project.dao.JsIBiz_partnerDao;
import joeun.project.dao.JsIUSER_listDao;
import joeun.project.dto.JsBiz_partnerDto;

public interface JsIBiz_partnerService {

	
	public	void insertBiz(JsBiz_partnerDto dto) throws Exception;

	public JsBiz_partnerDto checkId(@Param("biz_no") String biz_no, 
             @Param("biz_pw") String biz_pw);

	public JsBiz_partnerDto getBizInfo(String biz_no) throws Exception;
   
}