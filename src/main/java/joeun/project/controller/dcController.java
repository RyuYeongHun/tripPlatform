package joeun.project.controller;

import java.io.IOException;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import joeun.project.dto.dcImageDto;
import joeun.project.service.dcImageServiceI;

@Controller
public class dcController {
	@Autowired
	dcImageServiceI imageService;
	
	@RequestMapping(value="/upload", method = RequestMethod.GET)
	public String handleFileUpload1(MultipartFile image, RedirectAttributes redirectAttributes) {

		return "/dc/imageUploadForm";
	}

	@PostMapping("/upload")
	public String handleFileUpload2(MultipartFile image, RedirectAttributes redirectAttributes) {
		try {
			dcImageDto imageDto = new dcImageDto();
			imageDto.setFile_name(image.getOriginalFilename());
			imageDto.setImage_data(image.getBytes());
			
			imageService.saveImage(imageDto);
			redirectAttributes.addFlashAttribute("message", "Image uploaded successfully.");
		} catch (IOException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("message", "Failed to upload image.");
		}
		return "redirect: /upload";
	}
	@GetMapping("/image")
	public ModelAndView getImage(@RequestParam("id") int id) {
		dcImageDto dto = imageService.getImageData(id);
		ModelAndView mav = new ModelAndView("/dc/imageView");
		//base64encodedImage
		String base64EncodedString = Base64.getEncoder().encodeToString(dto.getImage_data());
		dto.setBase64encodedImage(base64EncodedString);
		
		
		mav.addObject("imageData",dto);
		return mav;
	}
	@RequestMapping(value="/dctest", method = RequestMethod.GET)
	public String dctest(Model model) {

		return "/dc/testdc";
	}
	
}
