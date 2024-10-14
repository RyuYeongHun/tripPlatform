package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.ITourGoalDao;
import joeun.project.dto.TourGoalDto;


@Service
public class TourGoalImpl implements ITourGoalService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextTourGoalId() throws Exception{
		ITourGoalDao dao=sqlSession.getMapper(ITourGoalDao.class);
		return dao.getNextTourGoalId();
	}
	
	@Override
	public void registerTourGoal(TourGoalDto tourGoalDto) throws Exception {
		ITourGoalDao dao=sqlSession.getMapper(ITourGoalDao.class);
		dao.registerTourGoal(tourGoalDto);
	}
	
	@Override
	public ArrayList<TourGoalDto> selectTourGoalAll() throws Exception {
		ITourGoalDao dao=sqlSession.getMapper(ITourGoalDao.class);
		return dao.selectTourGoalAll();
	}
	
	@Override
	public void deleteTourGoal(int goal_id) throws Exception {
		ITourGoalDao dao=sqlSession.getMapper(ITourGoalDao.class);
		dao.deleteTourGoal(goal_id);
	}
	
	


}
