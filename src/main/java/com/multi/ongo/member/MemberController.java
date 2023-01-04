package com.multi.ongo.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
		
		MemberService service;
		
		@Autowired // 생성자를 통해서 인젝션 받을 수 있도록 오토와이어드 처리
		public MemberController(MemberService service) {
			super();
			this.service = service;
		}
			
		//서비스 겟방식으로 로그인뷰 보기
			@RequestMapping(value="/member/login.do",method = RequestMethod.GET)
			public String empservicewritePage() {
				return "member/login";
			}
			
		// 로그인 - db로 값 넘겨주기 포스트
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
		
		//로그아웃 - 세션끊기 처리
		@RequestMapping("/member/logout.do")
		public String logout(HttpSession session) {
			//System.out.println("logout");
			if(session != null) {
				session.invalidate();
			}
			//System.out.println("logout~~~~");
			return "redirect:/index";
		} 

		//아이디찾기
		@RequestMapping(value="/member/findid",method = RequestMethod.GET)
		public String findID() {
			return "member/findid";
		}
		//비밀번호찾기
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
			//System.out.println("가입테스트중"+joininsert);
			service.insert(joininsert);
			return "redirect:/member/join4";
		}
	
		@RequestMapping(value="/member/join4")
		public String join4() {
			return "member/join4";
		}
		
		//관리자> 회원목록> 전체리스트
		 @RequestMapping(value="/member/memberboard")
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
			
			
			//관리자- 회원등록-쓰기(인설트)뷰 페이지 GET 
			@RequestMapping(value="/member/memberwrite",method = RequestMethod.GET)
			public String memberC(MemberDTO joinwrite,HttpSession session) {
				System.out.println("회원등록-쓰기확인중++++"+joinwrite);
				return "member/memberwrite";
			}
			
			//관리자- 회원등록-쓰기(인설트)db로 넘겨받는 페이지 POST
			@RequestMapping(value="/member/memberwrite",method = RequestMethod.POST)
			public String memberwrite(MemberDTO joininsert) {
				System.out.println("회원등록중=>"+joininsert);
				return "redirect:/member/memberboard";
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
