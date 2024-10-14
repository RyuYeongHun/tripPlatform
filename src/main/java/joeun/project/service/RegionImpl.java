package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IRegionDao;
import joeun.project.dto.RegionDto;


@Service
public class RegionImpl implements IRegionService {

	@Autowired
	private SqlSession sqlSession;
	

	
	@Override
	public void registerRegion(RegionDto regionDto) throws Exception {
		IRegionDao dao=sqlSession.getMapper(IRegionDao.class);
		dao.registerRegion(regionDto);
	}
	
	@Override
	public ArrayList<RegionDto> selectRegionAll() throws Exception {
		IRegionDao dao=sqlSession.getMapper(IRegionDao.class);
		return dao.selectRegionAll();
	}
	
	@Override
	public void deleteRegion(String areacode) throws Exception {
		IRegionDao dao=sqlSession.getMapper(IRegionDao.class);
		dao.deleteRegion(areacode);
	}
	
	


}
