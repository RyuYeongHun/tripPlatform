package joeun.project.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IMwBolgguriDao;
import joeun.project.dto.MwBolgguriCategoryDto;
import joeun.project.dto.MwBolgguriDto;
import joeun.project.dto.MwBolgguriRegionDto;

@Service
public class MwBolgguriServiceImpl implements IMwBolgguriService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MwBolgguriDto> selectAll(String areaCode, List<String> category, String filterNo, int offset, int pageSize, String keyword) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.selectAll(areaCode, category, filterNo, offset, pageSize, keyword);
	}
	
	@Override
	public String selectAllCount(String areaCode, List<String> category, String keyword) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.selectAllCount(areaCode, category, keyword);
	}
	
	@Override
	public MwBolgguriDto selectId(String bolgguri_id) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.selectId(bolgguri_id);
	}
	
	@Override
	public List<MwBolgguriDto> selectBest(String areaCode) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.selectBest(areaCode);
	}

	@Override
	public MwBolgguriRegionDto regionSelect(String areaCode) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.regionSelect(areaCode);
	}
	
	@Override
	public List<MwBolgguriCategoryDto> categorySelect(List<String> category) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.categorySelect(category);
	}

	@Override
	public List<MwBolgguriDto> selectRegionBest(String areaCode) {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.selectRegionBest(areaCode);
	}

	@Override
	public List<MwBolgguriRegionDto> regionSelectAll() {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.regionSelectAll();
	}

	@Override
	public List<MwBolgguriCategoryDto> categorySelectAll() {
		IMwBolgguriDao dao = sqlSession.getMapper(IMwBolgguriDao.class);
		return dao.categorySelectAll();
	}

}
