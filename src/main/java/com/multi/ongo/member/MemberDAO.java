package com.multi.ongo.member;

import java.util.List;

public interface MemberDAO {
	//등록
	int insert(MemberDTO dto);
		
	//전체리스트
	List<MemberDTO> memberlist();
	
	//회원 상세조회
	MemberDTO memberIdRead(String id);
	
	//회원 삭제
	int delete(String id);
	
	//회원 업데이트
	int update(MemberDTO dto);
	
	//로그인
	MemberDTO login(MemberDTO idInfo);
	
	
	
}
