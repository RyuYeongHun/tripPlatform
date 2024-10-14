package joeun.project.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import joeun.project.dto.API_bolgguriDto;
import joeun.project.dto.API_cat_code;
import joeun.project.dto.API_commonDto;
import joeun.project.dto.API_contentImageDto;
import joeun.project.dto.API_intro14Dto;
import joeun.project.dto.API_introduceDto;
import joeun.project.dto.API_jalgguriDto;
import joeun.project.dto.API_mukgguriiDto;
import joeun.project.dto.API_sigunguCodeDto;
import joeun.project.service.RestServiceI;

@Controller
public class API_RestController {
	@Autowired
	RestServiceI restService;
	
	@RequestMapping(value = "/bolgguri", method = RequestMethod.GET)
	public String ajax(Locale locale, Model model) {

		return "/dc/api_bolgguri";//이동할 페이지 : +.jsp
	}
	@RequestMapping(value = "/bolgguri2", method = RequestMethod.GET)
	public String bolgguri2(Locale locale, Model model) {

		return "/dc/api_bolgguri2";//이동할 페이지 : +.jsp
	}
	
	@RequestMapping("/ajax/insertAPI_bolgguri")
	@ResponseBody
	public String ajaxinsertData(@RequestBody List<API_bolgguriDto> data) {
		System.out.println(data);		
		restService.insertData(data);

		return "Data saved successfully";
	}
	
	@RequestMapping(value = "/jalgguri", method = RequestMethod.GET)
	public String jalgguri(Locale locale, Model model) {

		return "/dc/api_jalgguri";//이동할 페이지 : +.jsp
	}
	
	@RequestMapping("/ajax/insertAPI_jalgguri")
	@ResponseBody
	public String insertAPI_jalgguri(@RequestBody List<API_jalgguriDto> data) {
		System.out.println(data);		
		restService.insertAPI_jalgguri(data);

		return "Data saved successfully";
	}
	@RequestMapping(value = "/mukgguri", method = RequestMethod.GET)
	public String mukgguri(Locale locale, Model model) {

		return "/dc/api_mukgguri";//이동할 페이지 : +.jsp
	}
	
	@RequestMapping("/ajax/insertAPI_mukgguri")
	@ResponseBody
	public String insertAPI_mukgguri(@RequestBody List<API_mukgguriiDto> data) {
		System.out.println(data);		
		restService.insertAPI_mukgguri(data);

		return "Data saved successfully";
	}
	@RequestMapping(value = "/cat_code", method = RequestMethod.GET)//api_cat_code 페이지 보여주기
	public String cat_code(Locale locale, Model model) {

		return "/dc/api_cat_code";//이동할 페이지 : +.jsp
	}
	@RequestMapping("/ajax/insertAPI_cat_code")//API_cat_code 입력하기
	@ResponseBody
	public String insertAPI_cat_code(@RequestBody List<API_cat_code> data) {
		System.out.println(data);		
		restService.insertAPI_cat_code(data);

		return "Data saved successfully";
	}
	@RequestMapping(value = "/area_code", method = RequestMethod.GET)//api_area_code 페이지 보여주기
	public String area_code(Locale locale, Model model) {

		return "/dc/api_area_code";//이동할 페이지 : +.jsp
	}
	@RequestMapping("/ajax/insertAPI_area_code")//api_area_code 입력하기
	@ResponseBody
	public String insertAPI_area_code(@RequestBody List<API_cat_code> data) {
		System.out.println(data);		
		restService.insertAPI_area_code(data);

		return "Data saved successfully";
	}
	@RequestMapping("/ajax/insertAPI_sigungu_code")//api_sigungu_code 입력하기
	@ResponseBody
	public String insertAPI_sigungu_code(@RequestBody List<API_sigunguCodeDto> data) {
		System.out.println("Dto data:"+ data);		
		restService.insertAPI_sigungu_code(data);

		return "Data saved successfully";
	}
	@RequestMapping(value = "/intro12", method = RequestMethod.GET)
	public String bolgguri2(Model model) {

		return "/dc/api_intro12";//이동할 페이지 : +.jsp
	}
	@RequestMapping(value = "/intro14", method = RequestMethod.GET)
	public String intro14(Model model) {

		return "/dc/api_intro14";//이동할 페이지 : +.jsp
	}
	@RequestMapping("/ajax/insertAPI_introduce")
	@ResponseBody
	public String ajaxinsertintroduce(@RequestBody API_introduceDto data) {
		System.out.println(data);		
		restService.insertAPI_Introduce(data);

		return "Data saved successfully";
	}
	@RequestMapping("/ajax/insertAPI_intro14")
	@ResponseBody
	public String insertAPI_intro14(@RequestBody List<API_intro14Dto> data) {
		System.out.println("API_intro14Dto: "+data);
		for(int i=0;i<data.size();i++) {
			restService.insertAPI_Intro14(data.get(i));			
		}

		return "Data saved successfully";
	}
	@RequestMapping(value = "/contentImage", method = RequestMethod.GET)
	public String contentImage(Model model) {

		return "/dc/api_contentImage";//이동할 페이지 : +.jsp
	}
	@RequestMapping("/ajax/insertAPI_contentImage")
	@ResponseBody
	public String insertAPI_contentImage(@RequestBody List<API_contentImageDto> data) {
		System.out.println("Conroller API_contentImageDto: "+data);		
		restService.insertAPI_contentImage(data);
		return "Data saved successfully";
	}
	@RequestMapping(value = "/api_common", method = RequestMethod.GET)
	public String api_common(Model model) {

		return "/dc/api_common";//이동할 페이지 : +.jsp
	}
	@RequestMapping("/ajax/insertAPI_common")
	@ResponseBody
	public String insertAPI_common(@RequestBody List<API_commonDto> data) {
		System.out.println("jsonString: "+data);	
		for(int i=0;i<data.size();i++) {
			restService.insertAPI_common(data.get(i));			
		}
		
		return "Data insert successfully!";
	}
}
