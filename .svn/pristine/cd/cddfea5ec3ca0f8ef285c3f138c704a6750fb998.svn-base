package joeun.project.service;

import java.util.List;

import joeun.project.dto.MwBolgguriCategoryDto;
import joeun.project.dto.MwBolgguriDto;
import joeun.project.dto.MwBolgguriRegionDto;

public interface IMwBolgguriService {
	public List<MwBolgguriDto> selectAll(String areaCode, List<String> category, String filterNo, int offset, int pageSize, String keyword);
	public String selectAllCount(String areaCode, List<String> category, String keyword);
	public MwBolgguriDto selectId(String bolgguri_id);
	public List<MwBolgguriDto> selectBest(String areaCode);
	public MwBolgguriRegionDto regionSelect(String areaCode);
	public List<MwBolgguriCategoryDto> categorySelect(List<String> category);
	public List<MwBolgguriDto> selectRegionBest(String areaCode);
	public List<MwBolgguriRegionDto> regionSelectAll();
	public List<MwBolgguriCategoryDto> categorySelectAll();

}
