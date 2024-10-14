package joeun.project.controller; //미자막 이름에 웹 페이지 url에 표시됨

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import joeun.project.dto.MwBolgguriDto;
import joeun.project.service.IMwBolgguriService;

@Controller  //컽트롤러 선언 어노테이션 
@RequestMapping("/mw/*")
public class MwController {
	
	@Autowired
	private IMwBolgguriService service;
	
	// 볼거리 메인 페이지
	@RequestMapping(value = "/bolgguriMain", method = RequestMethod.GET)	
	public void bolgguriMain(
			@RequestParam(value = "areaCode", required = false) String areaCode, // 지역코드
			@RequestParam(value = "keyword", required = false) String keyword,
			Model model) {
		System.out.println("컨트롤러 실행");
		boolean isKeyword = false;
		// 널 처리 및 매퍼에서 빈 문자열 검색되지 않게 처리
		if (areaCode != null && areaCode.trim().isEmpty()) {
	    	areaCode = null; // null로 처리하여 필터링하지 않도록 설정
	    }
		if(areaCode != null && !areaCode.isEmpty()) { // 지역명 클릭하여 볼거리 메인 진입 시 radio버튼, 선택 지역명 출력 처리
			model.addAttribute("areaCode", areaCode);
			model.addAttribute("areaTitle", service.regionSelect(areaCode)); 
		}
		if(keyword != null && keyword.trim().isEmpty()) {
			keyword = null;
			isKeyword = true;
		}
		if(keyword != null && !keyword.isEmpty()) {
			model.addAttribute("keyword", keyword);
			isKeyword = true;
		}
		
	    List<String> cat1 = null; // 첫 페이지 진입시 카테고리 널
	    String filterNo = "1"; // 기본순 정렬 검색으로 설정
	    int page = 1; // 첫 페이지 진입시 보여줄 페이지 수 1로 기본 설정
	    int pageSize = 20; // 첫 페이지 진입시 보여줄 데이터 수 
		int offset = (page - 1) * pageSize;
		List<MwBolgguriDto> mwBolgguriDtos = service.selectAll(areaCode, cat1, filterNo, offset, pageSize, keyword);
		model.addAttribute("isKeyword", isKeyword);
		model.addAttribute("mwBolgguriDtos", mwBolgguriDtos);
		model.addAttribute("selectAllCount", service.selectAllCount(areaCode, cat1, keyword));
		model.addAttribute("bestDtos", service.selectBest(areaCode));
		model.addAttribute("mwBolgguriRegionDtos", service.regionSelectAll()); // 볼거리 리스트 지역명 출력 
		model.addAttribute("mwBolgguriCategoryDtos", service.categorySelectAll()); // 카테고리 창에 출력할 카테고리명
		System.out.println("========== LIST CONTROLLER RESULT ==========");
		System.out.println("areaCode : " + areaCode + " / keyword : " + keyword);
	}
}
