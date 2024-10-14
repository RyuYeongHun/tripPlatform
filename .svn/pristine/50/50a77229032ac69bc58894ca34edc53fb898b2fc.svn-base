package joeun.project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.HsplusDao;
import joeun.project.dto.HsplusDto;

@Service
public class HsplusServiceImpl implements HsplusService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(HsplusDto dto) throws Exception{
		HsplusDao dao = sqlSession.getMapper(HsplusDao.class);
		dao.insert(dto);
	}
	
	@Override
	 public ArrayList<HsplusDto> select() throws Exception{
		HsplusDao dao = sqlSession.getMapper(HsplusDao.class);
		return dao.select();
	}
	
	@Override
	public void update(HsplusDto dto) throws Exception{
		HsplusDao dao = sqlSession.getMapper(HsplusDao.class);
		dao.update(dto);
	}
	
	@Override
	public void update_user(HsplusDto dto)throws Exception{
		HsplusDao dao = sqlSession.getMapper(HsplusDao.class);
		dao.update_user(dto);
	}
	
	@Override
	public void delete_user(int query_id, String id) throws Exception {
	    HsplusDao dao = sqlSession.getMapper(HsplusDao.class);
	    dao.delete_user(query_id, id);
	}


}
