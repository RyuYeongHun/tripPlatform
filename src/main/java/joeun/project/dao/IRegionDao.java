package joeun.project.dao;

import java.util.ArrayList;

import joeun.project.dto.RegionDto;



public interface IRegionDao {
	
		//등록하기
		public void registerRegion(RegionDto regionDto) throws Exception;

		//모든 리스트 
		public ArrayList<RegionDto> selectRegionAll() throws Exception;
		
		//선택한 항목 삭제하기
		public void deleteRegion(String areacode) throws Exception;

	
}