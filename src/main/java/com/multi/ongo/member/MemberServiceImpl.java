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
	public int insert(MemberDTO joininsert) {//등록
		if(joininsert.getMember_id().equals("admin")) {//관리자계정이면 role =>1,사용자계정이면 role=>2
			joininsert.setMember_role("1"); //관리자계정이면 role변수를 1로 셋팅 - setter메소드를 호출해서 셋팅하기
		}else {
			joininsert.setMember_role("2");
		}
		return memberdao.insert(joininsert);
	}

	@Override
	public List<MemberDTO> joinlist() { // 전체리스트
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
