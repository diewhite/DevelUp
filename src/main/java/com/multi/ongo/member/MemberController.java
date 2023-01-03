package com.multi.ongo.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("user")
public class MemberController {
		
		MemberService service;
			
			@Autowired
			public MemberController(MemberService service) {
				super();
				this.service = service;
			}
	
		/*
			
			//서비스 겟방식으로 로그인뷰 보기
			@RequestMapping(value="member/login",method = RequestMethod.GET)
			public String empservicewritePage() {
				return "member/logout";
			}
			//포스트방식으로 글 등록
			@RequestMapping(value = "member/logout",method = RequestMethod.POST)
			public String write(MemberDTO board) {
				//실제 db에 저장할때 호출되는 컨트롤러의 메소드
				return "redirect:/index.do";
			}
			
		*/

			
		//서비스 겟방식으로 로그인뷰 보기
			@RequestMapping(value="/member/login.do",method = RequestMethod.GET)
			public String empservicewritePage() {
				return "member/login";
			}
			
		// 로그인
		@RequestMapping(value="/member/login.do",method = RequestMethod.POST) 
		public ModelAndView login(MemberDTO loginId, HttpServletRequest request) { //loginId 닉네임 ,
			//System.out.println(loginId.toString());
			ModelAndView viewName = new ModelAndView();
			MemberDTO user = service.login(loginId);
			//System.out.println(user);
			String view = "";
			if(user !=null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user); //컨트롤러에서 저장해준 "user"라는 이름으로 저장된 객체 top.jsp에서 꺼내쓰기 위함
				view = "redirect:/index";
			}else {
				view = "/member/login";
			}
			viewName.setViewName(view);
			System.out.println(user);
			return viewName;
		}

		//erp파일에 있던거
		@RequestMapping("/member/logout.do")
		public String logout(SessionStatus status) {
		//System.out.println("스프링내부 객체인 SessionStatus를 이용해서 로그아웃 처리하기");
		status.setComplete();//세션에 있는 user객체를 제거하는 작업
		return "redirect:/index.do";
		}
		
		/*로그아웃
				@RequestMapping("/member/logout.do")
				public String logout(HttpSession session) {
					System.out.println("logout");
					if(session != null) {
						session.invalidate();
					}
					System.out.println("logout~~~~");
					return "redirect:/index";
				} 
		*/
			
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
		
		//계정관리
		 @RequestMapping(value="member/memberboard")
			public String member() {
				return "member/memberboard";
			}
			
			@RequestMapping(value="member/memberread")
			public String memberr() {
				return "member/memberread";
			}
					
			@RequestMapping(value="member/memberupdate")
			public String memberu() {
				return "member/memberupdate";
			}
			@RequestMapping(value="member/memberwrite")
			public String emberc() {
				return "member/memberwrite";
			}
			
		//서비스관리
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
