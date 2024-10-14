package joeun.project.service;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.HsFreeBoardDao;
import joeun.project.dao.HsfaqDao;
import joeun.project.dto.HsFreeBoardDto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Service
public class HsFreeBoardServiceImpl implements HsFreeBoardService {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insert(HsFreeBoardDto dto) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        dao.insert(dto);
    }

    @Override
    public HsFreeBoardDto selectById(Integer id) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        return dao.selectById(id);
    }

    @Override
    public ArrayList<HsFreeBoardDto> selectAll() throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        return dao.selectAll();
    }

    @Override
    public void update(HsFreeBoardDto dto) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        dao.update(dto);
    }

    @Override
    public void delete(Integer id) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        dao.delete(id);
    }

    @Override
    public ArrayList<HsFreeBoardDto> selectAllWithPagination(@Param("offset") int offset, @Param("limit") int limit) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        return dao.selectAllWithPagination(offset, limit);
    }
    
    @Override
    public int getTotalBoardCount() throws Exception {
    	HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        return dao.getTotalBoardCount();
    }
    
 // 조회수 증가
    @Override
    public void incrementViews(Integer id) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        dao.incrementViews(id);
    }

    // 좋아요 수 증가
    @Override
    public void incrementLikes(Integer id) throws Exception {
        HsFreeBoardDao dao = sqlSession.getMapper(HsFreeBoardDao.class);
        dao.incrementLikes(id);
    }

}
