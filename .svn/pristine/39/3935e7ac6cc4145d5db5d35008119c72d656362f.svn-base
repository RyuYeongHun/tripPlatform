package joeun.project.controller; //미자막 이름에 웹 페이지 url에 표시됨

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import joeun.project.dto.MwBolgguriDto;
import joeun.project.service.IMwBolgguriService;

@RestController
@RequestMapping("/mwAjax/*")
public class MwControllerAjax {
	
	@Autowired
	private IMwBolgguriService service;
	
	// 인기 여행지 TOP 3
	@RequestMapping(value = "/bolgguriBest", method = RequestMethod.GET)
	public List<MwBolgguriDto> bolgguriBest(
			@RequestParam(value = "areaCode", required = false) String areaCode,
			Model model){
		System.out.println("인기 여행지 TOP 3");
		if (areaCode != null && areaCode.trim().isEmpty()) {
	    	areaCode = null; // null로 처리하여 필터링하지 않도록 설정
	    }
		
		List<MwBolgguriDto> bestDtos = service.selectBest(areaCode);
		System.out.println("==========검색 결과==========");
		System.out.println(bestDtos);
		System.out.println("areaCode : " + areaCode);
		return bestDtos;
	}
	
	// 검색결과 ajax
	@RequestMapping(value = "/bolgguriSearch", method = RequestMethod.GET)
	public List<MwBolgguriDto> bolgguriSearch(
			@RequestParam(value = "areaCode", required = false) String areaCode,
			@RequestParam(value = "cat1", required = false) List<String> cat1,
			@RequestParam(value = "filterNo", required = false) String filterNo,
			@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "keyword", required = false) String keyword,
			Model model){
		System.out.println("LIST AJAX START");
		// 널 처리 및 매퍼에서 빈 문자열 검색되지 않게 처리
		if(page == null) {
			page = 1;
		}
		if (areaCode != null && areaCode.trim().isEmpty()) {
	    	areaCode = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    if (cat1 != null && cat1.isEmpty()) {
	        cat1 = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    if (filterNo == null || (filterNo != null && filterNo.isEmpty())) {
	    	filterNo = "1"; // 기본 값 1로 설정
	    }
	    if (keyword != null && keyword.trim().isEmpty()) {
	    	keyword = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    int pageSize = 20;
		int offset = (page - 1) * pageSize;
		
		List<MwBolgguriDto> mwBolgguriDtos = service.selectAll(areaCode, cat1, filterNo, offset, pageSize, keyword);
		System.out.println("========== LIST AJAX RESULT==========");
		System.out.println("areaCode : " + areaCode + " / cat1 : " + cat1 + " / filterNo : " + filterNo + " / page : " + page);
		System.out.println("데이터 수 : " + mwBolgguriDtos.size());
		return mwBolgguriDtos;
	}
	
	// 검색 결과 카운트
	@RequestMapping(value = "/bolgguriSearchCount", method = RequestMethod.GET)
	public String bolgguriSearchCount(
			@RequestParam(value = "areaCode", required = false) String areaCode,
			@RequestParam(value = "cat1", required = false) List<String> cat1,
			@RequestParam(value = "keyword", required = false) String keyword,
			Model model){
		System.out.println("LSIT COUNT AJAX START");
		// 널 처리 및 매퍼에서 빈 문자열 검색되지 않게 처리
		if (areaCode != null && areaCode.trim().isEmpty()) {
	    	areaCode = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    if (cat1 != null && cat1.isEmpty()) {
	        cat1 = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    if (keyword != null && keyword.trim().isEmpty()) {
	    	keyword = null; // null로 처리하여 필터링하지 않도록 설정
	    }
		String selectAllCount = service.selectAllCount(areaCode, cat1, keyword);
		model.addAttribute("selectAllCount", selectAllCount);
		System.out.println("LIST COUNT : " + selectAllCount);
		return selectAllCount;
	}
	
	// 지도 검색 마커 찾기
	@RequestMapping(value = "/mapMarkerSearch", method = RequestMethod.GET)
	public MwBolgguriDto mapMarkerSearch(@RequestParam(value = "bolgguri_id", required = false) String bolgguri_id) {
		System.out.println("========== ID SEARCH AJAX ==========");
		System.out.println("bolgguri_id : " + bolgguri_id);
		MwBolgguriDto markerDto = service.selectId(bolgguri_id);
		System.out.println(markerDto);
		return markerDto;
	}
	
	// 지도 검색 전체 리스트
	@RequestMapping(value = "/mapSearch", method = RequestMethod.GET)	
	public List<MwBolgguriDto> mapSearch(
			@RequestParam(value = "areaCode", required = false) String areaCode,
			@RequestParam(value = "cat1", required = false) List<String> cat1,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			Model model) {
		// 널 처리 및 매퍼에서 빈 문자열 검색되지 않게 처리
		if (areaCode != null && areaCode.trim().isEmpty()) {
	    	areaCode = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    if (cat1 != null && cat1.isEmpty()) {
	        cat1 = null; // null로 처리하여 필터링하지 않도록 설정
	    }
	    if(pageSize == null) {
			pageSize = 20; // 기본 값 20 설정
		}
	    String filterNo = "5"; // 자동 리뷰많은순 검색
	    int page = 1;
	    int offset = (page - 1) * pageSize;
	    
	    List<MwBolgguriDto> mwBolgguriDtos = service.selectAll(areaCode, cat1, filterNo, offset, pageSize, null);
		System.out.println("========== MAP AJAX RESULT ==========");
		System.out.println("areaCode : " + areaCode + " / cat1 : " + cat1 + " / pageSize : " + pageSize);
		System.out.println("데이터 수 : " + mwBolgguriDtos.size());
		return mwBolgguriDtos;
	}
	
	
}
