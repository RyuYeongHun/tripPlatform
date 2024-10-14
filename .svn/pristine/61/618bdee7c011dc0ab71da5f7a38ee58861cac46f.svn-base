package joeun.project.dao;


import org.apache.ibatis.annotations.Param;
import joeun.project.dto.JsBiz_partnerDto;


public interface JsIBiz_partnerDao {

	public void insertBiz(JsBiz_partnerDto dto) throws Exception;

	public JsBiz_partnerDto checkId(@Param("biz_no") String biz_no, @Param("biz_pw") String biz_pw);
	
	public JsBiz_partnerDto selectByBizId(String biz_no);

}
