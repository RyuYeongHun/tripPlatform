package joeun.project.dao;

import java.util.ArrayList;

import joeun.project.dto.ReferTotalDto;
import joeun.project.dto.ReferenceProductDto;


public interface IReferTotalDao {
	
	//시퀸스
	public int getNextReferTotalId() throws Exception;
	
	//조건에 맞는 상품 군들 랜덤에 담기 위함
	public ArrayList<ReferTotalDto> selectReferOptionProductList(int choice_id) throws Exception;
	
	//선택한 데이터 중 한개씩만 받는 기타 값 출력
	public ArrayList<ReferenceProductDto> selectListEtc(int choice_id) throws Exception;
		
	//선택한 데이터 중 여러개의 연령대 받는 값 출력
	public ArrayList<String> selectListTheme(int choice_id) throws Exception;
		
	//선택한 데이터 중 여러개의 연령대 받는 값 출력
	public ArrayList<String> selectListAge(int choice_id) throws Exception;
	
	//선택한 데이터 중 여러개의 일차별 받는 값 출력
	public ArrayList<String> selectListAssignDay(int choice_id) throws Exception;
	
	//랜덤 까지 돌린 후 최종 결과물 일차별 상품들
	public ArrayList<ReferenceProductDto> selectListPeriodProduct(int choice_id) throws Exception;
	
	//등록하기
	public void registerReferTotal(ReferTotalDto referTotalDto) throws Exception;
}
