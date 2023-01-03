package com.multi.ongo.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
		
		MemberService service;
		
		@Autowired // 생성자를 통해서 인젝션 받을 수 있도록 오토와이어드 처리
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
				view = "member/login";
			}
			viewName.setViewName(view);
			//System.out.println(user);
			return viewName;
		}
		
		//로그아웃
		@RequestMapping("/member/logout.do")
		public String logout(HttpSession session) {
			System.out.println("logout");
			if(session != null) {
				session.invalidate();
			}
			System.out.println("logout~~~~");
			return "redirect:/index";
		} 

		/*//erp파일에 있던거
		@RequestMapping("/member/logout.do")
		public String logout(SessionStatus status) {
		//System.out.println("스프링내부 객체인 SessionStatus를 이용해서 로그아웃 처리하기");
		status.setComplete();//세션에 있는 user객체를 제거하는 작업
		return "redirect:/index.do";
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
		
		//회원가입 - 약관동의
		@RequestMapping(value="/member/join1")
		public String join1() {
			return "member/join1";
		}
		
		//회원가입 - 인증
		@RequestMapping(value="/member/join2")
		public String join2() {
			return "member/join2";
		}
		
		//회원가입 - 인설트 정보입력- 뷰 페이지 GET 
		@RequestMapping(value="/member/join3",method = RequestMethod.GET)
		public String join3_run(MemberDTO joinwrite,HttpSession session) {
			//System.out.println("등록되는지확인중++++"+joinwrite);
			return "member/join3";
		}
		
		//회원가입 - 인설트 정보입력 - db로 넘겨받는 페이지 POST 
		//public String list(BoardDTO board,String id)여기서 매개변수는 board나 id를 매개변수라 한다.
		@RequestMapping(value="/member/join3",method = RequestMethod.POST)
		public String join3(MemberDTO joininsert) {
			System.out.println("가입테스트중"+joininsert);
			service.insert(joininsert);
			return "redirect:/member/join4";
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
		
		//관리자- 회원관리-목록보기
		 @RequestMapping(value="member/memberboard")
			public String member(Model model) {
			 List<MemberDTO> memberlist = service.joinlist();
			 System.out.println(memberlist);
			 model.addAttribute("memberlist",memberlist);
				return "member/memberboard";
			}
			
			@RequestMapping(value="member/memberread")
			public String memberR() {
				return "member/memberread";
			}
					
			@RequestMapping(value="member/memberupdate")
			public String memberU() {
				return "member/memberupdate";
			}
			
			//관리자- 회원등록-쓰기(인설트)
			@RequestMapping(value="member/memberwrite",method = RequestMethod.GET)
			public String memberC() {
				return "member/memberwrite";
			}
			
			//관리자- 회원등록-쓰기(인설트)
			@RequestMapping(value="member/memberwrite",method = RequestMethod.POST)
			public String memberwrite(MemberDTO memberboard) {
				System.out.println("회원등록중=>"+memberboard);
				return "member/memberwrite";
			}
			
		//게시판관리
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
