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
	public int insert(MemberDTO dto) {//등록
		return 0;
	}

	@Override
	public List<MemberDTO> memberlist() { // 전체리스트
		return null;
	}

	@Override
	public MemberDTO memberIdRead(String id) { //읽기
		return null;
	}

	@Override
	public int delete(String id) { //삭제
		return 0;
	}

	@Override
	public int update(MemberDTO dto) {  //수정
		return 0;
	}

	@Override
	public MemberDTO login(MemberDTO idInfo) { //로그인
		return null;
	}
	
	
	
	
}
