package com.multi.ongo.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// @Service 어노테이션 꼭 붙여줘야 스프링에서 이녀석이 Service 역할을 하는 녀석이구나!! 하고 인식
//Controller 는 넘어온 요청을 처리하기 위해 Service 를 호출한다.
// 블로그 내용 참조 https://onlyformylittlefox.tistory.com/13
@Service
public class MemberServiceImpl implements MemberService{

	MemberDAO memberdao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberdao) {
		super();
		this.memberdao = memberdao;
	}
	
	@Override
	public int insert(MemberDTO joininsert) {//회원가입 -등록
		String phone = joininsert.getPhone1()+"-"+joininsert.getPhone2()+"-"+joininsert.getPhone3();
		String email = "";
		joininsert.setMember_phone(phone);//phone을 member_phone에 셋팅
		joininsert.setMember_sign("가입");//회원가입 상태 - 가입/탈퇴
		if(joininsert.getEmail2().equals("directly")) {//equals (비교) admin 관리자 계정이면 role =>99,사용자계정이면 role=>1
			//멤버롤셋팅
			email = joininsert.getEmail1()+"@"+joininsert.getEmail99(); //관리자계정이면 role변수를 99로 셋팅 - setter메소드를 호출해서 셋팅하기
		}else {
			email = joininsert.getEmail1()+"@"+joininsert.getEmail2();
		}
		joininsert.setMember_email(email);//email을 member_email에 셋팅
		return memberdao.insert(joininsert);
	}
	@Override
	public List<MemberDTO> joinlist() {  // 관리자> 회원목록> 전체리스트
		return memberdao.joinlist();
	}

	@Override
	public MemberDTO memberIdRead(String joinread) { //읽기
		return memberdao.memberIdRead(joinread);
	}

	@Override
	public int delete(String joindeleteid) { //삭제
		return memberdao.delete(joindeleteid);
	}

	@Override
	public int update(MemberDTO joinupdate) {  //수정
		return memberdao.update(joinupdate);
	}

	@Override
	public MemberDTO login(MemberDTO loginidInfo) { //로그인
		return memberdao.login(loginidInfo);
	}
	
	
	
	
}
