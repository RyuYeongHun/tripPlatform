package joeun.project.service;

import java.util.ArrayList;


import joeun.project.dto.HsfaqDto;


public interface HsfaqService {
	 
	public ArrayList<HsfaqDto> select() throws Exception;
	
	public ArrayList<HsfaqDto> selectByStatusZero() throws Exception;
	
	public void insert(HsfaqDto dto) throws Exception;
	
	public void update(HsfaqDto dto)throws Exception;
	
	public void delete(int id) throws Exception;
	
	public HsfaqDto findById(int id) throws Exception;
	
	public ArrayList<HsfaqDto> announcement()throws Exception;
	
	public ArrayList<HsfaqDto> selectAnnouncementsWithPagination(int offset, int limit) throws Exception;

    public int getTotalFaqCount() throws Exception;
    
    // 이전 글 조회
    HsfaqDto findPrevious(int id) throws Exception;

    // 다음 글 조회
    HsfaqDto findNext(int id) throws Exception;
    
    public ArrayList<HsfaqDto> selectBusiness() throws Exception;

}
