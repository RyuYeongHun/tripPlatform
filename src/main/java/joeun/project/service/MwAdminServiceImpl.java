package joeun.project.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IMwAdminDao;
import joeun.project.dao.IMwBolgguriDao;
import joeun.project.dto.MwBolgguriCategoryDto;
import joeun.project.dto.MwBolgguriDto;
import joeun.project.dto.MwBolgguriRegionDto;

@Service
public class MwAdminServiceImpl implements IMwAdminService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int adminCountAll() {
		IMwAdminDao dao = sqlSession.getMapper(IMwAdminDao.class);
		return dao.adminCountAll();
	}

	@Override
	public ArrayList<MwBolgguriRegionDto> areaSelectAll() {
		IMwAdminDao dao = sqlSession.getMapper(IMwAdminDao.class);
		return dao.areaSelectAll();
	}

	@Override
	public ArrayList<MwBolgguriCategoryDto> catSelectAll() {
		IMwAdminDao dao = sqlSession.getMapper(IMwAdminDao.class);
		return dao.catSelectAll();
	}

	@Override
	public ArrayList<MwBolgguriDto> listSelect(int offset, int pageSize) {
		IMwAdminDao dao = sqlSession.getMapper(IMwAdminDao.class);
		return dao.listSelect(offset, pageSize);
	}
	

}
