package joeun.project.service;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IThemeChoiceDao;
import joeun.project.dto.ThemeChoiceDto;


@Service
public class ThemeChoiceImpl implements IThemeChoiceService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextThemeChoiceId() throws Exception{
		IThemeChoiceDao dao=sqlSession.getMapper(IThemeChoiceDao.class);
		return dao.getNextThemeChoiceId();
	}
	
	@Override
	public void registerThemeChoice(ThemeChoiceDto themeChoiceDto) throws Exception {
		IThemeChoiceDao dao=sqlSession.getMapper(IThemeChoiceDao.class);
		dao.registerThemeChoice(themeChoiceDto);
	}
	

}
