package joeun.project.service;

import joeun.project.dto.ThemeChoiceDto;


public interface IThemeChoiceService {

	//시퀸스
	public int getNextThemeChoiceId() throws Exception;
		
	//등록하기
	public void registerThemeChoice(ThemeChoiceDto themeChoiceDto) throws Exception;

}
