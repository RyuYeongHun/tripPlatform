package joeun.project.controller; //미자막 이름에 웹 페이지 url에 표시됨

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import joeun.project.dto.AgeChoiceDto;
import joeun.project.dto.AgeDto;
import joeun.project.dto.DayAssignmentDto;
import joeun.project.dto.ProductDayRandomDto;
import joeun.project.dto.ReferChoiceDto;
import joeun.project.dto.ReferTotalDto;
import joeun.project.dto.ReferenceProductDto;
import joeun.project.dto.RegionDto;
import joeun.project.dto.ThemeChoiceDto;
import joeun.project.dto.ThemeDto;
import joeun.project.dto.TourGoalDto;
import joeun.project.dto.TourPeriodDto;

import joeun.project.service.IAgeChoiceService;
import joeun.project.service.IAgeService;
import joeun.project.service.IDayAssignmentService;
import joeun.project.service.IProductDayRandomService;
import joeun.project.service.IReferChoiceService;
import joeun.project.service.IReferTotalService;
import joeun.project.service.IRegionService;
import joeun.project.service.IThemeChoiceService;
import joeun.project.service.IThemeService;
import joeun.project.service.ITourGoalService;
import joeun.project.service.ITourPeriodService;
import joeun.project.vo.ProductDayRandomVo;




/**
 * Handles requests for the application home page.
 */
@Controller  //컽트롤러 선언 어노테이션 
public class ReferenceAiController {
	
	
	
	@Autowired
	private IAgeService ageService;
	
	@Autowired
	private ITourPeriodService tourPeriodService;
	
	@Autowired
	private ITourGoalService tourGoalService;
	
	@Autowired
	private IRegionService regionService;
	
	@Autowired
	private IThemeService themeService;
	
	@Autowired
	private IThemeChoiceService themeChoiceService;
	
	@Autowired
	private IAgeChoiceService ageChoiceService;
	
	@Autowired
	private IReferChoiceService referChoiceService;
	
	@Autowired
	private IReferTotalService referTotalService;
	
	@Autowired
	private IProductDayRandomService productDayRandomService;
	
	@Autowired
	private IDayAssignmentService dayAssignmentService;
	
	@RequestMapping(value = "/sh/user/referenceAi", method = RequestMethod.GET)
	public String referenceAi( HttpSession session,Model model) throws Exception {
		
		String user_id = (String) session.getAttribute("user_id");

		// 로그인된 사용자의 정보가 없으면 로그인 페이지로 리다이렉트합니다.
		if (user_id == null) {
			
			user_id = "비회원";
			
		}
		
		ArrayList<AgeDto> ageList = ageService.selectAgeAll();
		model.addAttribute("ageList", ageList);
		
		ArrayList<TourPeriodDto> periodList = tourPeriodService.selectTourPeriodAll();
		model.addAttribute("periodList",periodList);
		
		ArrayList<TourGoalDto> goalList = tourGoalService.selectTourGoalAll();
		model.addAttribute("goalList",goalList);
		
		ArrayList<RegionDto> regionList = regionService.selectRegionAll();
		model.addAttribute("regionList",regionList);
		
		ArrayList<ThemeDto> themeList = themeService.selectThemeFirstCat();
		model.addAttribute("themeList",themeList);
		
		return "/sh/user/referenceAi";
	}
	
	@RequestMapping(value = "/sh/user/referenceAi", method = RequestMethod.POST)
	public String referenceAiPost(HttpSession session, Model model, String[] code, Integer[] age_id, ReferTotalDto referTotalDto ,ReferChoiceDto referChoiceDto, ProductDayRandomDto productDayRandomDto,ThemeChoiceDto themeChoiceDto , AgeChoiceDto ageChoiceDto, DayAssignmentDto dayAssignmentDto,RedirectAttributes redirectAttributes, @RequestParam("period_nights") int nights) throws Exception {
		
		String user_id = (String) session.getAttribute("user_id");

		// 로그인된 사용자의 정보가 없으면 로그인 페이지로 리다이렉트합니다.
		if (user_id == null) {
			
			user_id = "비회원";
			
		}
		
		Integer choice_id = referChoiceService.getNextReferChoiceId();
		Integer choicetheme_id = themeChoiceService.getNextThemeChoiceId();
		Integer choiceage_id = ageChoiceService.getNextAgeChoiceId();
		
		referChoiceDto.setUser_id(user_id);
		referChoiceDto.setChoice_id(choice_id);
		referChoiceDto.setChoicetheme_id(choicetheme_id);
		referChoiceDto.setChoiceage_id(choiceage_id);

		referChoiceService.registerReferChoice(referChoiceDto);

		
		//ageChoiceDto 값 넣기
		for (int a : age_id) {
			ageChoiceDto.setChoiceage_id(choiceage_id);
			ageChoiceDto.setChoice_id(choice_id);
			ageChoiceDto.setAge_id(a);
			
			ageChoiceService.registerAgeChoice(ageChoiceDto);
		}
		

		//themeChoiceDto 값 넣기
		for (String a : code) {
			themeChoiceDto.setChoicetheme_id(choicetheme_id);
			themeChoiceDto.setChoice_id(choice_id);
			themeChoiceDto.setCode(a);

			themeChoiceService.registerThemeChoice(themeChoiceDto);
		}
		
		
		// 선택 값에 맞는 테마의 상품 리스트들
	    ArrayList<ReferTotalDto> availableProducts = referTotalService.selectReferOptionProductList(choice_id);
		
	    
		// 상품 랜덤 로직
	    ProductDayRandomVo productDayRandomVo = ProductDayRandomVo.createWithRandomAssignments(user_id, availableProducts, nights);
	    
	    
	 // Debug: 각 일자별 상품 개수 확인
	    for (ProductDayRandomVo.DayAssignment dayAssignment : productDayRandomVo.getDayAssignments()) {
	        System.out.println("Day: " + dayAssignment.getDay());
	        System.out.println("Number of products: " + dayAssignment.getProducts().size());
	    }

	    
	    Integer random_id = productDayRandomService.getNextRandomId();
	    productDayRandomDto.setRandom_id(random_id);
	    productDayRandomDto.setUser_id(user_id);
	    
	    productDayRandomService.registerProductDayRandom(productDayRandomDto);

	    model.addAttribute("productDayRandomVo", productDayRandomVo);
	    model.addAttribute("nights", nights);
	    
	    
	    
	    for (ProductDayRandomVo.DayAssignment dayAssignment : productDayRandomVo.getDayAssignments()) {
	        Integer day_id = dayAssignmentService.getNextDayAssignmentId(); // 고유한 day_id를 생성
	        dayAssignmentDto.setDay_id(day_id); // 일차별로 고유한 day_id 사용
	        dayAssignmentDto.setRandom_id(random_id); // Foreign key
	        dayAssignmentDto.setDay_number(Integer.parseInt(dayAssignment.getDay())); 
	        dayAssignmentDto.setAssign_day(dayAssignment.getDay() + "일차");

	        dayAssignmentService.registerDayAssignment(dayAssignmentDto);
	        
	        // Refer_Total 데이터 삽입
	        for (ReferTotalDto product : dayAssignment.getProducts()) {
	            referTotalDto.setRefertotal_id(referTotalService.getNextReferTotalId());
	            referTotalDto.setDay_id(day_id); // 일차별 고유한 day_id 사용
	            referTotalDto.setBolgguri_id(product.getBolgguri_id());
	            referTotalDto.setChoice_id(choice_id);
	            referTotalService.registerReferTotal(referTotalDto);
	        }
	    }

		//result 페이지에서 choice_id 값 받기 위함
		redirectAttributes.addAttribute("choice_id", choice_id);

		return "redirect:/sh/user/referenceAiResult";
	}
	
	@RequestMapping(value = "/sh/user/referenceAiResult", method = RequestMethod.GET)
	public String referenceAiResult( Model model, @RequestParam("choice_id") Integer choice_id, ReferTotalDto referTotalDto) throws Exception {
		

		
		
		
	    ArrayList<ReferenceProductDto> listEtc = referTotalService.selectListEtc(choice_id);
	    model.addAttribute("listEtc", listEtc);

	    ArrayList<String> listAge = referTotalService.selectListAge(choice_id);
	    model.addAttribute("listAge", listAge);

	    ArrayList<String> listTheme = referTotalService.selectListTheme(choice_id);
	    model.addAttribute("listTheme", listTheme);
	    
	    ArrayList<String> listDay = referTotalService.selectListAssignDay(choice_id);
	    model.addAttribute("listDay", listDay);
	    
	    ArrayList<ReferenceProductDto> listProduct = referTotalService.selectListPeriodProduct(choice_id);
	    model.addAttribute("listProduct", listProduct);
	    
	   System.out.println("상품정보 확인중"+listProduct);

	

	    String kakaoApiKey = "a7faa1b5042e8cffab85500d73eb2605";
	    model.addAttribute("kakaoApiKey", kakaoApiKey);

	    
	    
	  
	   

	    return "/sh/user/referenceAiResult";
	}
	
	
	@RequestMapping(value = "/sh/user/getLocations", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<ReferenceProductDto> getLocations(@RequestParam("choice_id") Integer choice_id) throws Exception {
	    return referTotalService.selectListPeriodProduct(choice_id);
	}
}
