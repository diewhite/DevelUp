package com.multi.ongo.member;

import java.util.List;

public interface MemberDAO {
	//등록
	int insert(MemberDTO joininsert);
		
	//전체리스트
	List<MemberDTO> joinlist();
	
	//회원 상세조회
	MemberDTO memberIdRead(String joinread);
	
	//회원 삭제
	int delete(String joindeleteid);
	
	//회원 업데이트
	int update(MemberDTO joinupdate);
	
	//로그인
	MemberDTO login(MemberDTO loginidInfo);
	
	
	
}
