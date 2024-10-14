package joeun.project.dao;

import java.util.ArrayList;
import java.util.List;

import joeun.project.dto.ThemeDto;
import joeun.project.vo.PageVo;



public interface IThemeDao {
	
	//등록하기
	public void registerTheme(ThemeDto themeDto) throws Exception;

	//모든 리스트 
	public ArrayList<ThemeDto> selectThemeAll() throws Exception;
	
	//선택한 항목 삭제하기
	public void deleteTheme(String code) throws Exception;
	
	//페이지 넘버링을 위한 리스트 토탈
	public int listCount(PageVo vo)throws Exception; 

	public List<ThemeDto> listSearch(PageVo vo)throws Exception;
	
	// 대분류만 추출 및 음식, 숙박, 추천 항목 제외
	public ArrayList<ThemeDto> selectThemeFirstCat() throws Exception;
}