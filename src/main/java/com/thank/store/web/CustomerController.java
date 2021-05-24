package com.thank.store.web;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.thank.store.dto.CustomerDTO;

import com.thank.store.dto.MemberDTO;
import com.thank.store.service.CustomerService;
import com.thank.store.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MemberService memberService;
	
	@GetMapping()
	public String login2() {
		return "/customer/login";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "/customer/signup";
	}
	
	//작성자 : 방지훈
	//작성일자: 2021/05/23 20:50
	@GetMapping("/home")
	public String home(@ModelAttribute CustomerDTO customerDTO ,Model model, HttpSession session) {
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("memberInfo");
		customerDTO = new CustomerDTO();
		long purchasecount = 0;
		try {
			customerDTO = customerService.getCustomerInfo(memberInfo.getNo());
			purchasecount = customerService.getPurchaseCount(memberInfo.getNo());
			
			model.addAttribute("customerDTO", customerDTO);
			model.addAttribute("purchasecount",purchasecount);
		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return "customer/home";
	}
			
	
	
	/*
	 * 작성자: 김수빈
	 * 작성일자: 2021/05/23 23:43
	 */
	@PostMapping()
	public String login(@ModelAttribute MemberDTO memberDTO, 
			Model model,
			HttpSession session) {
		log.info(memberDTO.toString());
		try {
			MemberDTO memberInfo = memberService.getMember(memberDTO);
			session.setAttribute("memberInfo", memberInfo);
			//return "redirect:../customer/customer";
			return "redirect:./customer/home";
		} catch (Exception e) {
			log.info(e.getMessage());
			model.addAttribute("msg",e.getMessage());
			model.addAttribute("url", "./customer");
			return "result";
		}
	}
	
	/*
	 * 작성자: 김수빈
	 * 작성일자: 2021/05/23 23:43
	 */
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("memberInfo");
		session.invalidate();
		
		ModelAndView mav = new ModelAndView("result");
		mav.addObject("msg", memberInfo.getId() + 
				 "(" + memberInfo.getName() + ")님이 로그아웃 하였습니다.");
		mav.addObject("url", "./");
		return mav;
	}
	
	
	/*
	 * 작성자: 김수빈
	 * 작성일자: 2021/05/24 09:28
	 */
	@PostMapping(value="/signup")
	public String signUp(
			@ModelAttribute MemberDTO memberDTO,
			Model model) {
		try {
			if(memberService.checkMemberExist(memberDTO)==0) {
				memberService.addCustomer(memberDTO);
			}

			return "redirect:./login";
		} catch (Exception e) {
			log.info(e.getMessage());
			model.addAttribute("msg",e.getMessage());
			model.addAttribute("url", "./");
			return "result";
		}
	}
}
