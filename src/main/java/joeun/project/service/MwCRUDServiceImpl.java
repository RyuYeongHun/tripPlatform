package joeun.project.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IMwCRUDDao;

@Service
public class MwCRUDServiceImpl implements IMwCRUDService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void reviewInsert(int bolgguri_id) {
		IMwCRUDDao dao = sqlSession.getMapper(IMwCRUDDao.class);
		dao.reviewInsert(bolgguri_id);
		System.out.println(bolgguri_id + "번 리뷰 추가");
	}

	@Override
	public void view_countUp(int bolgguri_id) {
		IMwCRUDDao dao = sqlSession.getMapper(IMwCRUDDao.class);
		dao.view_countUp(bolgguri_id);
		System.out.println(bolgguri_id + "번 조회수 : 1 UP");
	}
	

}
