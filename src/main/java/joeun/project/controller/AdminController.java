package joeun.project.controller; //미자막 이름에 웹 페이지 url에 표시됨

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import joeun.project.dto.HsplusDto;
import joeun.project.dto.AgeDto;
import joeun.project.dto.RegionDto;
import joeun.project.dto.ThemeDto;
import joeun.project.dto.TourGoalDto;
import joeun.project.dto.TourPeriodDto;
import joeun.project.service.HsfaqService;
import joeun.project.service.HsplusService;
import joeun.project.service.IAgeService;
import joeun.project.service.IRegionService;
import joeun.project.service.IThemeService;
import joeun.project.service.ITourGoalService;
import joeun.project.service.ITourPeriodService;
import joeun.project.vo.PageVo;



/**
 * Handles requests for the application home page.
 */
@Controller  //컽트롤러 선언 어노테이션 
public class AdminController {
	
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
	private HsfaqService faqservice;
	
	@Autowired
	private HsplusService pservice;
	
	@RequestMapping(value = "/sh/admin/referAiOptionListAdm", method = RequestMethod.GET)
	public String referenceAiOption( Model model) throws Exception {
		
		ArrayList<AgeDto> ageList = ageService.selectAgeAll();
		model.addAttribute("ageList", ageList);
		
		ArrayList<TourPeriodDto> periodList = tourPeriodService.selectTourPeriodAll();
		model.addAttribute("periodList",periodList);
		
		ArrayList<TourGoalDto> goalList = tourGoalService.selectTourGoalAll();
		model.addAttribute("goalList",goalList);
		
		return "/sh/admin/referAiOptionListAdm";
	}
	
	@RequestMapping(value = "/sh/admin/referAiOptionListAdm", method = RequestMethod.POST)
	public String referenceAiOptionPost( Model model, AgeDto ageDto, TourPeriodDto tourPeriodDto, TourGoalDto tourGoalDto,RedirectAttributes rttr, Integer age_id, Integer period_id, Integer goal_id,@RequestParam(value = "age_action", required = false) String age_action,@RequestParam(value = "period_action", required = false) String period_action,@RequestParam(value = "goal_action", required = false) String goal_action) throws Exception {
		
		
		//age
		if ("추가하기".equals(age_action)) {
		
			age_id = ageService.getNextAgeId();
			ageDto.setAge_id(age_id);
			ageService.registerAge(ageDto);
			rttr.addFlashAttribute("msg", ageDto.getAge_name() + "을 새로 등록하였습니다.");

			return "redirect:/sh/admin/referAiOptionListAdm";
			
		}else if("삭제하기".equals(age_action)) {
			
			ageService.deleteAge(age_id);
			rttr.addFlashAttribute("msg", "해당 리스트를 삭제하였습니다.");

			return "redirect:/sh/admin/referAiOptionListAdm";

		}
		
		// period
		if ("추가하기".equals(period_action)) {

			period_id = tourPeriodService.getNextTourPeriodId();
			tourPeriodDto.setPeriod_id(period_id);
			tourPeriodService.registerTourPeriod(tourPeriodDto);
			rttr.addFlashAttribute("msg", tourPeriodDto.getPeriod_name() + "을 새로 등록하였습니다.");

			return "redirect:/sh/admin/referAiOptionListAdm";

		} else if ("삭제하기".equals(period_action)) {

			tourPeriodService.deleteTourPeriod(period_id);
			rttr.addFlashAttribute("msg", "해당 리스트를 삭제하였습니다.");

			return "redirect:/sh/admin/referAiOptionListAdm";

		}
		
		//goal
		
		if ("추가하기".equals(goal_action)) {

			goal_id = tourGoalService.getNextTourGoalId();
			tourGoalDto.setGoal_id(goal_id);
			tourGoalService.registerTourGoal(tourGoalDto);
			rttr.addFlashAttribute("msg", tourGoalDto.getGoal_name() + "을 새로 등록하였습니다.");

			return "redirect:/sh/admin/referAiOptionListAdm";

		} else if ("삭제하기".equals(goal_action)) {

			tourGoalService.deleteTourGoal(goal_id);
			rttr.addFlashAttribute("msg", "해당 리스트를 삭제하였습니다.");

			return "redirect:/sh/admin/referAiOptionListAdm";

		}
		
		
		return "/sh/admin/referAiOptionListAdm";
	}
	
	@RequestMapping(value = "/sh/admin/productOptionRegion", method = RequestMethod.GET)
	public String productOptionRegion( Model model) throws Exception {
		
		ArrayList<RegionDto> regionList = regionService.selectRegionAll();
		model.addAttribute("regionList",regionList);
		
		return "/sh/admin/productOptionRegion";
	}
	
	@RequestMapping(value = "/sh/admin/productOptionRegion", method = RequestMethod.POST)
	public String productOptionRegionPost( Model model,RegionDto regionDto,RedirectAttributes rttr, String areacode,@RequestParam(value = "region_action", required = false) String region_action) throws Exception {
		
		if ("추가하기".equals(region_action)) {


			regionService.registerRegion(regionDto);
			rttr.addFlashAttribute("msg", regionDto.getName() + "을 새로 등록하였습니다.");

			return "redirect:/sh/admin/productOptionRegion";

		} else if ("삭제하기".equals(region_action)) {

			regionService.deleteRegion(areacode);
			rttr.addFlashAttribute("msg", "해당 리스트를 삭제하였습니다.");

			return "redirect:/sh/admin/productOptionRegion";

		}
		
		return "/sh/admin/productOptionRegion";
	}
	
	
	@RequestMapping(value = "/sh/admin/productOptionTheme", method = RequestMethod.GET)
	public String productOptionTheme( Model model,PageVo vo) throws Exception {
		

		/*
		 * ArrayList<ThemeDto> themeList = themeService.selectThemeAll();
		 * model.addAttribute("themeList",themeList);
		 */
		
		List<ThemeDto> themeList = themeService.listSearch(vo);
    	model.addAttribute("themeList", themeList);
		
		vo.setTotalCount(themeService.listCount(vo));
		
		
		return "/sh/admin/productOptionTheme";
	}
	
	@RequestMapping(value = "/sh/admin/productOptionTheme", method = RequestMethod.POST)
	public String productOptionThemePost( Model model,ThemeDto themeDto,RedirectAttributes rttr, String code,@RequestParam(value = "theme_action", required = false) String theme_action) throws Exception {
		
		if ("추가하기".equals(theme_action)) {


			themeService.registerTheme(themeDto);
			rttr.addFlashAttribute("msg", themeDto.getName() + "을 새로 등록하였습니다.");

			return "redirect:/sh/admin/productOptionTheme";

		} else if ("삭제하기".equals(theme_action)) {

			themeService.deleteTheme(code);
			rttr.addFlashAttribute("msg", "해당 리스트를 삭제하였습니다.");

			return "redirect:/sh/admin/productOptionTheme";

		}
		
		return "/sh/admin/productOptionTheme";
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/sh/admin/referAiListAdm", method = RequestMethod.GET)
	public String referenceAiList( Model model) {
		
		
		return "/sh/admin/referAiListAdm";
	}
	
	@RequestMapping(value = "/sh/admin/userAdm", method = RequestMethod.GET)
	public String userAdmin( Model model) {
		
		
		return "/sh/admin/userAdm";
	}
	
	@RequestMapping(value = "/sh/admin/userAdm2", method = RequestMethod.GET)
	public String userAdmin2( Model model) {
		
		
		return "/sh/admin/userAdm2";
	}
	
	@RequestMapping(value = "/sh/admin/boardAdm", method = RequestMethod.GET)
	public String boardAdmin( Model model, HttpSession session)throws Exception { 
		model.addAttribute("faq", faqservice.select());
		return "/sh/admin/boardAdm";
	}
	
	@RequestMapping(value = "/sh/admin/boardAdm2", method = RequestMethod.GET)
	public String boardAdmin2( Model model) throws Exception{
		model.addAttribute("faq", faqservice.announcement());
		return "/sh/admin/boardAdm2";
	}
	
	@RequestMapping(value = "/sh/admin/boardAdm3", method = RequestMethod.GET)
	public String boardAdmin3(HttpSession session,Model model) throws Exception{
		model.addAttribute("plus", pservice.select());
		return "/sh/admin/boardAdm3";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update( @RequestParam("id") String id,
            @RequestParam("content") String content,
            @RequestParam("content_answer") String contentAnswer,
            @RequestParam("suc") String suc, HsplusDto plusdto,RedirectAttributes rttr) throws Exception{
		pservice.update(plusdto);
		rttr.addFlashAttribute("msg", "답변등록 완료");
		return "redirect:/sh/admin/boardAdm3";
	}
	
	@RequestMapping(value = "/sh/admin/productAdm", method = RequestMethod.GET)
	public String productAdmin( Model model) {
		
		
		return "/sh/admin/productAdm";
	}
	
	@RequestMapping(value = "/sh/admin/productAdm2", method = RequestMethod.GET)
	public String productAdmin3( Model model) {
		
		
		return "/sh/admin/productAdm2";
	}
	
	
	
	@RequestMapping(value = "/include/header_adm2", method = RequestMethod.GET)
	public String test( Model model) {
		
		
		return "/include/header_adm2";
	}
	
	
	
	
	
}
