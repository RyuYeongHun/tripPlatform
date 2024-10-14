package joeun.project.dao;

import java.util.ArrayList;

import joeun.project.dto.AgeDto;



public interface IAgeDao {
	
	//시퀸스
	public int getNextAgeId() throws Exception;
	
	//등록하기
	public void registerAge(AgeDto ageDto) throws Exception;

	//모든 리스트 
	public ArrayList<AgeDto> selectAgeAll() throws Exception;
	
	//선택한 항목 삭제하기
	public void deleteAge(int age_id) throws Exception;


	
}