package joeun.project.service;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.HsplusDto;

public interface HsplusService {
	public void insert(HsplusDto dto) throws Exception;
	
	public ArrayList<HsplusDto> select() throws Exception;
	
	public void update(HsplusDto dto) throws Exception;
	
	public void update_user(HsplusDto dto)throws Exception;
	
	public void delete_user(@Param("query_id") int query_id, @Param("id") String id) throws Exception;
	
	
}
