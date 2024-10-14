package joeun.project.service;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.JsIBiz_partnerDao;
import joeun.project.dto.JsBiz_partnerDto;

@Service
public class JsBiz_partnerService implements JsIBiz_partnerService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertBiz(JsBiz_partnerDto dto) throws Exception {
		JsIBiz_partnerDao dao = sqlSession.getMapper(JsIBiz_partnerDao.class);
	      dao.insertBiz(dto);
	}

	@Override
	public JsBiz_partnerDto checkId(String biz_no, String biz_pw) {
		JsIBiz_partnerDao dao = sqlSession.getMapper(JsIBiz_partnerDao.class);
		return dao.checkId(biz_no, biz_pw);
	}

	@Override
	public JsBiz_partnerDto getBizInfo(String biz_no) throws Exception {
		JsIBiz_partnerDao dao = sqlSession.getMapper(JsIBiz_partnerDao.class);
		return dao.selectByBizId(biz_no);
	}

}
