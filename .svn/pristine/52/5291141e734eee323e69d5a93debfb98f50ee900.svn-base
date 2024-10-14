package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.ITourPeriodDao;
import joeun.project.dto.TourPeriodDto;


@Service
public class TourPeriodImpl implements ITourPeriodService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextTourPeriodId() throws Exception{
		ITourPeriodDao dao=sqlSession.getMapper(ITourPeriodDao.class);
		return dao.getNextTourPeriodId();
	}
	
	@Override
	public void registerTourPeriod(TourPeriodDto tourPeriodDto) throws Exception {
		ITourPeriodDao dao=sqlSession.getMapper(ITourPeriodDao.class);
		dao.registerTourPeriod(tourPeriodDto);
	}
	
	@Override
	public ArrayList<TourPeriodDto> selectTourPeriodAll() throws Exception {
		ITourPeriodDao dao=sqlSession.getMapper(ITourPeriodDao.class);
		return dao.selectTourPeriodAll();
	}
	
	@Override
	public void deleteTourPeriod(int period_id) throws Exception {
		ITourPeriodDao dao=sqlSession.getMapper(ITourPeriodDao.class);
		dao.deleteTourPeriod(period_id);
	}
	
	


}
