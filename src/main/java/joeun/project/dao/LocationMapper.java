package joeun.project.dao;

import java.util.List;
import java.util.Map;

import joeun.project.dto.API_cat_code;
import joeun.project.dto.BolgguriViewDto;
import joeun.project.dto.Location;

public interface LocationMapper {

    List<BolgguriViewDto> findNearbyLocations(Map<String, Object> params);
    List<BolgguriViewDto> getAllGpsPoints();
		List<API_cat_code> selectBolgguriCat();
		List<API_cat_code> selectMukgguriCat();
		List<BolgguriViewDto> findNearbyMukgguri(Map<String, Object> params);
}

