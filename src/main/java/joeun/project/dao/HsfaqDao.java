package joeun.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.HsfaqDto;

public interface HsfaqDao {
	public ArrayList<HsfaqDto> select() throws Exception;
	public ArrayList<HsfaqDto> selectByStatusZero() throws Exception;
	public void insert(HsfaqDto dto) throws Exception;
	public void update(HsfaqDto dto)throws Exception;
	public void delete(int id) throws Exception;
	
	public ArrayList<HsfaqDto> announcement()throws Exception;
	public HsfaqDto findById(int id) throws Exception; // 수정
	
	public ArrayList<HsfaqDto> selectAnnouncementsWithPagination(@Param("offset") int offset, @Param("limit") int limit) throws Exception;

    public int getTotalFaqCount() throws Exception;
    
    HsfaqDto findPrevious(@Param("id") int id) throws Exception;

    HsfaqDto findNext(@Param("id") int id) throws Exception;
    
    public ArrayList<HsfaqDto> selectBusiness() throws Exception;
    
    

}
