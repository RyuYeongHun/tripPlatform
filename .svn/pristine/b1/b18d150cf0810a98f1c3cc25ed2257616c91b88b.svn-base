package joeun.project.service;

import java.util.ArrayList;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IReferTotalDao;
import joeun.project.dto.ReferTotalDto;

import joeun.project.dto.ReferenceProductDto;


@Service
public class ReferTotalServiceImpl implements IReferTotalService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextReferTotalId() throws Exception{
		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		return dao.getNextReferTotalId();
	}
	
	//등록하기
	public void registerReferTotal(ReferTotalDto referTotalDto) throws Exception{
		
		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		dao.registerReferTotal(referTotalDto);
		
	}
		
	public ArrayList<ReferTotalDto> selectReferOptionProductList(int choice_id) throws Exception{
		
		IReferTotalDao dao = sqlSession.getMapper(IReferTotalDao.class);
		return dao.selectReferOptionProductList(choice_id);
		
	}
	
	
	//선택한 데이터 중 한개씩만 받는 기타 값 출력
	public ArrayList<ReferenceProductDto> selectListEtc(int choice_id) throws Exception{
		
		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		return dao.selectListEtc(choice_id);
	}
	
				
	//선택한 데이터 중 여러개의 연령대 받는 값 출력
	public ArrayList<String> selectListTheme(int choice_id) throws Exception{
		
		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		return dao.selectListTheme(choice_id);
		
	}
				
	//선택한 데이터 중 여러개의 연령대 받는 값 출력
	public ArrayList<String> selectListAge(int choice_id) throws Exception{
		
		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		return dao.selectListAge(choice_id);
		
	}
	
	//선택한 데이터 중 여러개의 일차별 받는 값 출력
	public ArrayList<String> selectListAssignDay(int choice_id) throws Exception{

		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		return dao.selectListAssignDay(choice_id);
	}
	
	
	//랜덤 까지 돌린 후 최종 결과물 일차별 상품들
	public ArrayList<ReferenceProductDto> selectListPeriodProduct(int choice_id) throws Exception{
		
		IReferTotalDao dao=sqlSession.getMapper(IReferTotalDao.class);
		return dao.selectListPeriodProduct(choice_id);
		
	}
				
	
	

}
