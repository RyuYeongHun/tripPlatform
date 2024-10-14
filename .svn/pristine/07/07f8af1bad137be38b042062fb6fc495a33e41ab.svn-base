package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IAgeDao;
import joeun.project.dto.AgeDto;

@Service
public class AgeImpl implements IAgeService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextAgeId() throws Exception{
		IAgeDao dao=sqlSession.getMapper(IAgeDao.class);
		return dao.getNextAgeId();
	}
	
	@Override
	public void registerAge(AgeDto ageDto) throws Exception {
		IAgeDao dao=sqlSession.getMapper(IAgeDao.class);
		dao.registerAge(ageDto);
	}
	
	@Override
	public ArrayList<AgeDto> selectAgeAll() throws Exception {
		IAgeDao dao=sqlSession.getMapper(IAgeDao.class);
		return dao.selectAgeAll();
	}
	
	@Override
	public void deleteAge(int age_id) throws Exception {
		IAgeDao dao=sqlSession.getMapper(IAgeDao.class);
		dao.deleteAge(age_id);
	}
	

}
