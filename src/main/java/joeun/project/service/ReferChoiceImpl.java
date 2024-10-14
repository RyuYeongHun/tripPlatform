package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IReferChoiceDao;
import joeun.project.dto.ReferChoiceDto;

@Service
public class ReferChoiceImpl implements IReferChoiceService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextReferChoiceId() throws Exception{
		IReferChoiceDao dao=sqlSession.getMapper(IReferChoiceDao.class);
		return dao.getNextReferChoiceId();
	}
	
	@Override
	public void registerReferChoice(ReferChoiceDto referChoiceDto) throws Exception {
		IReferChoiceDao dao=sqlSession.getMapper(IReferChoiceDao.class);
		dao.registerReferChoice(referChoiceDto);
	}
	
	/*
	 * //선택한 데이터 중 한개씩만 받는 값 출력
	 * 
	 * @Override public ArrayList<ReferChoiceDto> selectReferOptionOne(int
	 * choice_id) throws Exception{ IReferChoiceDao
	 * dao=sqlSession.getMapper(IReferChoiceDao.class); return
	 * dao.selectReferOptionOne(choice_id); }
	 * 
	 * //선택한 데이터 중 여러개의 연령대 받는 값 출력
	 * 
	 * @Override public ArrayList<String> selectReferOptionAgeName(int choice_id)
	 * throws Exception{ IReferChoiceDao
	 * dao=sqlSession.getMapper(IReferChoiceDao.class); return
	 * dao.selectReferOptionAgeName(choice_id); }
	 * 
	 * //선택한 데이터 중 여러개의 연령대 받는 값 출력
	 * 
	 * @Override public ArrayList<String> selectReferOptionThemeName(int choice_id)
	 * throws Exception{ IReferChoiceDao
	 * dao=sqlSession.getMapper(IReferChoiceDao.class); return
	 * dao.selectReferOptionThemeName(choice_id); }
	 * 
	 * //현재 사용 X
	 * 
	 * @Override public ArrayList<ReferChoiceDto> selectReferChoiceAll() throws
	 * Exception { IReferChoiceDao dao=sqlSession.getMapper(IReferChoiceDao.class);
	 * return dao.selectReferChoiceAll(); }
	 */
	
}
