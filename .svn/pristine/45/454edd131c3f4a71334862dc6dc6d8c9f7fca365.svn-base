package joeun.project.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.MwBolgguriCategoryDto;
import joeun.project.dto.MwBolgguriDto;
import joeun.project.dto.MwBolgguriRegionDto;

public interface IMwBolgguriDao {
	public List<MwBolgguriDto> selectAll(
			@Param("areaCode") String areaCode,
			@Param("list") List<String> list,
			@Param("filterNo") String filterNo,
			@Param("offset") int offset,
			@Param("pageSize") int pageSize,
			@Param("keyword") String keyword
			);
	public String selectAllCount(
			@Param("areaCode") String areaCode,
			@Param("list") List<String> list,
			@Param("keyword") String keyword
			);
	public MwBolgguriDto selectId(String bolgguri_id);
	public List<MwBolgguriDto> selectBest(@Param("areaCode") String areaCode);
	public MwBolgguriRegionDto regionSelect(@Param("areaCode") String areaCode);
	public List<MwBolgguriCategoryDto> categorySelect(@Param("list") List<String> list);
	public List<MwBolgguriDto> selectRegionBest(@Param("areaCode") String areaCode);
	public List<MwBolgguriRegionDto> regionSelectAll();
	public List<MwBolgguriCategoryDto> categorySelectAll();
}
