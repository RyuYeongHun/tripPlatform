package joeun.project.service;

import java.util.ArrayList;

import joeun.project.dto.ReferChoiceDto;


public interface IReferChoiceService {

		//시퀸스
		public int getNextReferChoiceId() throws Exception;
		
		//등록하기
		public void registerReferChoice(ReferChoiceDto referChoiceDto) throws Exception;

//		//선택한 데이터 중 한개씩만 받는 값 출력
//		public ArrayList<ReferChoiceDto> selectReferOptionOne(int choice_id) throws Exception;
//		
//		//선택한 데이터 중 여러개의 연령대 받는 값 출력
//		public ArrayList<String> selectReferOptionAgeName(int choice_id) throws Exception;
//		
//		//선택한 데이터 중 여러개의 연령대 받는 값 출력
//		public ArrayList<String> selectReferOptionThemeName(int choice_id) throws Exception;
//		
//		//모든 리스트 (현재 사용중 x)
//		public ArrayList<ReferChoiceDto> selectReferChoiceAll() throws Exception;

}
