package com.multi.ongo.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
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
		public String join1() {
			return "member/join1";
		}
		@RequestMapping(value="/member/join2")
		public String join2() {
			return "member/join2";
		}
		@RequestMapping(value="/member/join3")
		public String join3() {
			return "member/join3";
		}
		@RequestMapping(value="/member/join4")
		public String join4() {
			return "member/join4";
		}
		/*

			
		//서비스 겟방식으로 뷰 보기
		@RequestMapping(value="member/memberserviceboard",method = RequestMethod.GET)
		public String empservicewritePage() {
			return "member/memberservicewrite";
		}
		//포스트방식으로 글 등록
		@RequestMapping(value = "member/memberservicewrite",method = RequestMethod.POST)
		public String write(MemberDTO board) {
			//실제 db에 저장할때 호출되는 컨트롤러의 메소드
			return "redirect:/member/memberserviceboard";
		}
		 
		 */
		 @RequestMapping(value="member/memberserviceboard")
		public String memberservice() {
			return "member/memberserviceboard";
		}
		
		@RequestMapping(value="member/memberserviceread")
		public String memberservicer() {
			return "member/memberserviceread";
		}
				
		@RequestMapping(value="member/memberserviceupdate")
		public String memberserviceu() {
			return "member/memberserviceupdate";
		}
		@RequestMapping(value="member/memberservicewrite")
		public String empservicec() {
			return "member/memberservicewrite";
		}

		
}
