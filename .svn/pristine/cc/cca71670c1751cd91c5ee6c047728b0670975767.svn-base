package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.HsfaqDao;
import joeun.project.dto.HsfaqDto;

@Service
public class HsfaqServiceImpl implements HsfaqService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<HsfaqDto> select() throws Exception {
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		return dao.select();
	}
	
	public ArrayList<HsfaqDto> selectByStatusZero() throws Exception{
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		return dao.selectByStatusZero();
	}

	@Override
	public void insert(HsfaqDto dto) throws Exception {
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		dao.insert(dto);
	}

	@Override
	public void update(HsfaqDto dto) throws Exception {
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		dao.update(dto);
	}

	@Override
	public void delete(int id) throws Exception {
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		dao.delete(id);
	}

	@Override
	public ArrayList<HsfaqDto> announcement() throws Exception {
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		return dao.announcement();
	}

	@Override
	public HsfaqDto findById(int id) throws Exception { // 수정
		HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
		return dao.findById(id);
	}

	@Override
	public ArrayList<HsfaqDto> selectAnnouncementsWithPagination(int offset, int limit) throws Exception {
	    HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
	    return dao.selectAnnouncementsWithPagination(offset, limit);
	}

    @Override
    public int getTotalFaqCount() throws Exception {
        HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
        return dao.getTotalFaqCount();
    }
    
    @Override
    public HsfaqDto findPrevious(int id) throws Exception {
        HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
        return dao.findPrevious(id);
    }

    @Override
    public HsfaqDto findNext(int id) throws Exception {
        HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
        return dao.findNext(id);
    }
    
    @Override
    public ArrayList<HsfaqDto> selectBusiness() throws Exception {
    	HsfaqDao dao = sqlSession.getMapper(HsfaqDao.class);
        return dao.selectBusiness();
    }

}
