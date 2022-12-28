package com.multi.ongo.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmpController {
		
//		@RequestMapping("/emp/login.do")
//		public ModelAndView login() {
//			ModelAndView login = new ModelAndView();
//			login.addObject("msg", "스프링컨트롤러에서 전달하는 메시지");
//			login.setViewName("login");
//			return login;
//		}
	
	/*
		  
		
		*/
//		<!-- 소정 진행중 -->
	
		@RequestMapping(value="/emp/login",method = RequestMethod.GET)
		public ModelAndView main() {
		ModelAndView loginf = new ModelAndView();
		loginf.setViewName("emp/login");
		return loginf;
		}
		
		@RequestMapping(value="/emp/findid",method = RequestMethod.GET)
		public String findID() {
			return "emp/findid";
		}
		@RequestMapping(value="/emp/findpass.do",method = RequestMethod.GET)
		public String findpass() {
			return "emp/pass";
		}
		
		@RequestMapping(value="/emp/join1")
		public String Auction() {
			return "emp/join1";
		}
		
		@RequestMapping(value="emp/empserviceboard")
		public String empservice() {
			return "emp/empserviceboard";
		}
				
		
}
