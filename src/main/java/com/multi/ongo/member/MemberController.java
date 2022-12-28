package com.multi.ongo.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
		
//		@RequestMapping("/member/login.do")
//		public ModelAndView login() {
//			ModelAndView login = new ModelAndView();
//			login.addObject("msg", "스프링컨트롤러에서 전달하는 메시지");
//			login.setViewName("login");
//			return login;
//		}
	
	/*
		  테스트
		
		*/
//		<!-- 소정 진행중 -->
	
		@RequestMapping(value="/member/login",method = RequestMethod.GET)
		public ModelAndView main() {
		ModelAndView loginf = new ModelAndView();
		loginf.setViewName("member/login");
		return loginf;
		}
		
		@RequestMapping(value="/member/findid",method = RequestMethod.GET)
		public String findID() {
			return "member/findid";
		}
		@RequestMapping(value="/member/findpass",method = RequestMethod.GET)
		public String findpass() {
			return "member/pass";
		}
		
		@RequestMapping(value="/member/join1")
		public String Auction() {
			return "member/join1";
		}
		
		@RequestMapping(value="member/empserviceboard")
		public String empservice() {
			return "member/empserviceboard";
		}
		@RequestMapping(value="emp/empserviceread")
		public String empservicer() {
			return "member/empserviceread";
		}
				
		@RequestMapping(value="member/empserviceupdate")
		public String empserviceu() {
			return "member/empserviceupdate";
		}
		@RequestMapping(value="emp/empservicewrite")
		public String empservicec() {
			return "member/empservicewrite";
		}
				
		
}
