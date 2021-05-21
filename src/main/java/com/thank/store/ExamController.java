package com.thank.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.thank.store.dto.ExamDTO;
import com.thank.store.service.ExamService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ExamController {
	@Autowired
	private ExamService service;
	
	@GetMapping("/hello")
	public String hello1(@ModelAttribute ExamDTO examDTO, Model model) {
		try {
			examDTO = service.getExam();
			log.info(examDTO.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("examDTO", examDTO);
		
		return "exam";
	}
	
	@PostMapping("/hello")
	public String hello2(@ModelAttribute ExamDTO examDTO) {
		try {
			examDTO = service.getExam();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "exam";
	}
	
}
