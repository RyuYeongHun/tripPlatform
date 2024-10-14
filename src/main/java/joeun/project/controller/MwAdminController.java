package joeun.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import joeun.project.service.IMwAdminService;
import joeun.project.service.IMwBolgguriService;

@Controller  //컽트롤러 선언 어노테이션 
@RequestMapping("/mw/*")
public class MwAdminController {
	
	@Autowired
	private IMwAdminService service;
	
	// 관리자 상품 조회/수정
	@RequestMapping(value = "/mwAdminSearchUpdate", method = RequestMethod.GET)	
	public void bolgguriMain(Model model) {
		System.out.println("admin controller start");
		int page = 1;
		int pageSize = 50;
		int totalItems = service.adminCountAll();
		int totalPages = totalItems / pageSize;
		int offset = (page - 1) * pageSize;
		
		model.addAttribute("adminCountAll", service.adminCountAll()); // 볼거리 총카운트
		model.addAttribute("areaDtos", service.areaSelectAll()); // 지역 체크박스 리스트 출력
		model.addAttribute("catDtos", service.catSelectAll()); // 카테고리 체크박스 리트스 출력
		model.addAttribute("listDtos", service.listSelect(offset, pageSize));
		model.addAttribute("currentPage", page); // 현재 페이지
		model.addAttribute("totalPages", totalPages); // 전체 페이지
		System.out.println(service.listSelect(offset, pageSize));
	}
}
