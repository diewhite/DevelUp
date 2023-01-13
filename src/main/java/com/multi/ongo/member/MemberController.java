package com.multi.ongo.member;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	MemberService service;

	@Autowired // 생성자를 통해서 인젝션 받을 수 있도록 오토와이어드 처리
	public MemberController(MemberService service) {
		super();
		this.service = service;
	}

//========================================================= 로그인

	// 서비스 겟방식으로 로그인뷰 보기
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public String empservicewritePage() {
		return "member/login";
	}

	// 로그인 - db로 값 넘겨주기 포스트
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public ModelAndView login(MemberDTO loginId, HttpServletRequest request) { // loginId 닉네임 ,
		// System.out.println(loginId.toString());
		ModelAndView viewName = new ModelAndView();
		MemberDTO user = service.login(loginId);
		//System.out.println("user :" + user);
		String view = "";
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user); // 컨트롤러에서 저장해준 "user"라는 이름으로 저장된 객체 top.jsp에서 꺼내쓰기 위함
			view = "redirect:/index";
		} else {
			view = "member/login";
		}
		viewName.setViewName(view);
		// System.out.println(user);
		return viewName;
	}

	// 로그아웃 - 세션끊기 처리
	@RequestMapping("/member/logout.do")
	public String logout(HttpSession session) {
		// System.out.println("logout");
		if (session != null) {
			session.invalidate();
		}
		// System.out.println("logout~~~~");
		return "redirect:/index";
	}

	// 아이디찾기(페이지처리)
	@RequestMapping(value = "/member/findid", method = RequestMethod.GET)
	public String findID() {
		return "member/findid";
	}
	
	// 아이디찾기(ajax)
	@RequestMapping(value = "/member/ajax_findid")
	@ResponseBody
	public String ajax_findId(MemberDTO userInfo) {
		String userId = "";
		MemberDTO userData = service.findId(userInfo);
		if(userData!=null) {
			userId = userData.getMember_id();
		}
		return userId;
	}

	// 비밀번호찾기(페이지처리)
	@RequestMapping(value = "/member/pass", method = RequestMethod.GET)
	public String findpass() {
		return "member/pass";
	}
	
	// 비밀번호찾기(ajax)
	@RequestMapping(value = "/member/ajax_findpass")
	@ResponseBody
	public String ajax_findpass(MemberDTO userInfo) {
		String userId = "";
		MemberDTO userData = service.findPass(userInfo);
		if(userData!=null) {
			userId = userData.getMember_id();
		}
		return userId;
	}

	//비밀번호 변경
	@RequestMapping(value = "/member/passupdate")
	public String passUpdate(MemberDTO userInfo) {
		service.passModi(userInfo);
		return "redirect:/member/login.do";
	}

	// 회원가입 - 약관동의
	@RequestMapping(value = "/member/join1")
	public String join1() {
		return "member/join1";
	}

	// 회원가입 - 인증
	@RequestMapping(value = "/member/join2")
	public String join2() {
		return "member/join2";
	}

	// 회원가입 - 인설트 정보입력- 뷰 페이지 GET
	@RequestMapping(value = "/member/join3", method = RequestMethod.GET)
	public String join3_run(MemberDTO joinwrite, HttpSession session, String state, Model model) {
		// System.out.println("등록되는지확인중++++"+joinwrite);
		// System.out.println("view=>"+state);
		model.addAttribute("state", state);
		return "member/join3";
	}

	// 회원가입 - 인설트 정보입력 - db로 넘겨받는 페이지 POST
	// public String list(BoardDTO board,String id)여기서 매개변수는 board나 id를 매개변수라 한다.
	@RequestMapping(value = "/member/join3", method = RequestMethod.POST)
	public String join3(MemberDTO joininsert, String state) {
		// System.out.println("가입테스트중"+joininsert);
		// System.out.println("state=>"+state);
		String view = "";
		if (state.equals("ADMIN")) {
			view = "redirect:/member/memberboard";  //redirect: 데이터 전달없이 페이지만 이동시키고 싶을 때
			// System.out.println("");
		} else {
			view = "redirect:/member/join4";
		}
		service.insert(joininsert);
		return view;
	}

	@RequestMapping(value = "/member/join4")
	public String join4() {
		return "member/join4"; 
	}

	// 회원가입 - 아이디 중복 체크
	@RequestMapping(value = "/member/ajax_idcheck")
	@ResponseBody
	public String ajax_idcheck(String member_id) {
		String userId = "";
		MemberDTO user = service.idCheck(member_id);
		if(user!=null) {
			userId = user.getMember_id();
		}
		return userId;
	}
	
	// 회원탈퇴
	@RequestMapping(value = "/member/unsign")
	public String unsign(String member_id) {
		service.unsign(member_id);
		return "redirect:/member/logout.do";
	}
	
//========================================================= 관리자 > 회원목록

	// 관리자> 회원목록> 전체리스트
	@RequestMapping(value = "/member/memberboard")
	public String member(Model model) {
		List<MemberDTO> memberlist = service.joinlist();
		// System.out.println(memberlist);
		model.addAttribute("memberlist", memberlist);
		return "member/memberboard";
	}

	// 관리자>회원목록>상세읽기
	@RequestMapping(value = "/member/memberread")
	public String memberR(String member_id, String state, Model model) {
		// System.out.println("member_id,state찍히는지 보는중"+member_id+state);
		MemberDTO memberRead = service.memberIdRead(member_id);
		String view = "";
		if (state.equals("READ")) {
			view = "member/memberread";
		} else {
			view = "member/memberupdate";
		}
		model.addAttribute("memberRU", memberRead); // memberRU 이게 어트리뷰트
		//System.out.println("memberRead : " + memberRead);
		return view;
	}

	// 관리자>회원목록>상세읽기> 실제 업데이트 기능처리 수정
	@RequestMapping(value = "/member/memberupdate")
	public String memberU(MemberDTO joinupdate) {
		System.out.println("회원목록 업데이트 컨트롤러찍는중=>" + joinupdate);
		int result = service.update(joinupdate);
		return "redirect:/member/memberboard";
	}

	// 관리자>회원목록>삭제 delete
	@RequestMapping(value = "/member/memberdelete")
	public String memberD(String member_id) {
		// System.out.println("삭제처리확인"+member_id);
		int result = service.delete(member_id);
		return "redirect:/member/memberboard";
	}

	// 관리자>회원목록>검색
	@RequestMapping(value = "member/mbsearch")
	public String Msearch(String mbnamesearch, Model model) {
		List<MemberDTO> memberlist = service.msearch(mbnamesearch);
		System.out.println(memberlist);
		model.addAttribute("memberlist", memberlist);
		return "member/memberboard";
	}

//========================================================= 관리자 > 게시물관리

	// 게시판관리
	@RequestMapping(value = "member/memberserviceboard")
	public String memberservice() {
		return "member/memberserviceboard";
	}

	@RequestMapping(value = "member/memberserviceread")
	public String memberservicer() {
		return "member/memberserviceread";
	}

	@RequestMapping(value = "member/memberserviceupdate")
	public String memberserviceu() {
		return "member/memberserviceupdate";
	}

	@RequestMapping(value = "member/memberservicewrite")
	public String empservicec() {
		return "member/memberservicewrite";
	}

	
//========================================================= 나의온고> 마이페이지 정보수정
		
	// 나의온고> user 정보수정 뷰
	@RequestMapping(value = "/member/usermypage",method = RequestMethod.GET)
	//top에 있는 <a href="/ongo/member/usermypage?member_id=${user.member_id}">정보수정</a></li> => ?member_id=$ 파라미터명과 같아야 한다
	public String userU(String user_id,Model usermodel) { 
		MemberDTO userRead = service.memberIdRead(user_id);
		usermodel.addAttribute("userMode", userRead); // memberRU 이게 어트리뷰트
		//System.out.println("마이페이지 뷰 업데이트 컨트롤러찍는중=>" + usermodel);
		return "member/usermypage"; // member_id 멤버매게변수명
	}

	// 나의온고> user 정보수정
	@RequestMapping(value = "/member/usermypage", method = RequestMethod.POST) // 첫번째 인자는 url 이다. 두번째 인자는 http methode ㅇ이다.
	public String userU(MemberDTO uUpdate) { // userU => 메소드명 , MemberDTO => 매개변수타입 
		System.out.println("]여기는 컨트롤러 업데이트수정:" + uUpdate);
		int result = service.update(uUpdate); //int result  >> 추후에 회원정보에 프로필사진이 추가되었을 경우, 트랜잭션처리를위해서 이렇게 남겨놓음.
		return "redirect:/index"; // member_id 멤버매게변수명
	}

//========================================================= 거래 > 게시판읽기 > 회원정보보기	
	
	// dealboard > 상세페이지 > 회원아이디 클릭 > 회원정보보기
	@RequestMapping(value = "/member/ajax_memberread")
	@ResponseBody
	public MemberDTO ajax_memberR(String member_id) {
		MemberDTO userinfo = service.memberIdRead(member_id);
		return userinfo;
	}

	
	
}