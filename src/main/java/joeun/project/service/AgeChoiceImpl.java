package joeun.project.service;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IAgeChoiceDao;
import joeun.project.dto.AgeChoiceDto;


@Service
public class AgeChoiceImpl implements IAgeChoiceService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextAgeChoiceId() throws Exception{
		IAgeChoiceDao dao=sqlSession.getMapper(IAgeChoiceDao.class);
		return dao.getNextAgeChoiceId();
	}
	
	@Override
	public void registerAgeChoice(AgeChoiceDto ageChoiceDto) throws Exception {
		IAgeChoiceDao dao=sqlSession.getMapper(IAgeChoiceDao.class);
		 dao.registerAgeChoice(ageChoiceDto);
	}
	

}
