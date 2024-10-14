package joeun.project.dao;

import java.util.ArrayList;

import joeun.project.dto.TourPeriodDto;



public interface ITourPeriodDao {
	
	//시퀸스 
	public int getNextTourPeriodId() throws Exception;
	
	//등록하기
	public void registerTourPeriod(TourPeriodDto tourPeriodDto) throws Exception;

	//모든 리스트 
	public ArrayList<TourPeriodDto> selectTourPeriodAll() throws Exception;
	
	//선택한 항목 삭제하기
	public void deleteTourPeriod(int period_id) throws Exception;


	
}