package joeun.project.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IThemeDao;
import joeun.project.dto.ThemeDto;
import joeun.project.vo.PageVo;


@Service
public class ThemeImpl implements IThemeService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void registerTheme(ThemeDto themeDto) throws Exception {
		IThemeDao dao=sqlSession.getMapper(IThemeDao.class);
		dao.registerTheme(themeDto);
	}
	
	@Override
	public ArrayList<ThemeDto> selectThemeAll() throws Exception {
		IThemeDao dao=sqlSession.getMapper(IThemeDao.class);
		return dao.selectThemeAll();
	}
	
	@Override
	public void deleteTheme(String code) throws Exception {
		IThemeDao dao=sqlSession.getMapper(IThemeDao.class);
		dao.deleteTheme(code);
	}
	
	@Override
	public int listCount(PageVo vo) throws Exception {
		IThemeDao dao=sqlSession.getMapper(IThemeDao.class);
		return dao.listCount(vo);
	}
	
	@Override
	public List<ThemeDto> listSearch(PageVo vo) throws Exception {
		IThemeDao dao=sqlSession.getMapper(IThemeDao.class);
		return dao.listSearch(vo);
	}
	
	@Override
	public ArrayList<ThemeDto> selectThemeFirstCat() throws Exception {
		IThemeDao dao=sqlSession.getMapper(IThemeDao.class);
		return dao.selectThemeFirstCat();
	}
	
	
	


}
