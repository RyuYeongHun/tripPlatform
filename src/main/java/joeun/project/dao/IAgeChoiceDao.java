package joeun.project.dao;

import joeun.project.dto.AgeChoiceDto;


public interface IAgeChoiceDao {
	
	//시퀸스
	public int getNextAgeChoiceId() throws Exception;
	
	//등록하기
	public void registerAgeChoice(AgeChoiceDto ageChoiceDto) throws Exception;
	
}