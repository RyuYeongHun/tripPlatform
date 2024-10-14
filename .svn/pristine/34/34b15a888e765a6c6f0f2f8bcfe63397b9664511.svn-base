package joeun.project.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IDayAssignmentDao;
import joeun.project.dto.DayAssignmentDto;

@Service
public class DayAssignmentImpl implements IDayAssignmentService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextDayAssignmentId() throws Exception{
		IDayAssignmentDao dao=sqlSession.getMapper(IDayAssignmentDao.class);
		return dao.getNextDayAssignmentId();
	}
	
	@Override
	public void registerDayAssignment(DayAssignmentDto dayAssignmentDto) throws Exception {
		IDayAssignmentDao dao=sqlSession.getMapper(IDayAssignmentDao.class);
		dao.registerDayAssignment(dayAssignmentDto);
	}
	

}
