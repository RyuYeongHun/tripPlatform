package joeun.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.MwBolgguriCategoryDto;
import joeun.project.dto.MwBolgguriDto;
import joeun.project.dto.MwBolgguriRegionDto;

public interface IMwAdminDao {
	public int adminCountAll();
	public ArrayList<MwBolgguriRegionDto> areaSelectAll();
	public ArrayList<MwBolgguriCategoryDto> catSelectAll();
	public ArrayList<MwBolgguriDto> listSelect(
			@Param("offset") int offset,
			@Param("pageSize") int pageSize);
}
