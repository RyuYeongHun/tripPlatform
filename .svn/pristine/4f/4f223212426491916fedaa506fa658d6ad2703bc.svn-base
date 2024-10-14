package joeun.project.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.HsFreeBoardDto;

public interface HsFreeBoardService {
	public void insert(HsFreeBoardDto dto) throws Exception;
    public HsFreeBoardDto selectById(Integer id) throws Exception;
    public ArrayList<HsFreeBoardDto> selectAll() throws Exception;
    public ArrayList<HsFreeBoardDto> selectAllWithPagination(@Param("offset") int offset, @Param("limit") int limit) throws Exception;
    public void update(HsFreeBoardDto dto) throws Exception;
    public void delete(Integer id) throws Exception;
    public int getTotalBoardCount() throws Exception;
 // 조회수 증가 메서드
    public void incrementViews(Integer id) throws Exception;

    // 좋아요 수 증가 메서드
    public void incrementLikes(Integer id) throws Exception;

}
