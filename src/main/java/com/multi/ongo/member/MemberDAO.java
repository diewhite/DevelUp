package com.multi.ongo.member;

import java.util.List;
//mybatis의 SqlSessio을 이용해서 작업
public interface MemberDAO {
	//회원등록 - 회원가입(db에처리)
	int insert(MemberDTO joininsert);
		
	//전체리스트목록보기 - 회원목록(db에처리)
	List<MemberDTO> joinlist();
	
	//회원 - 상세조회(db에처리)
	MemberDTO memberIdRead(String joinread);
	
	//회원 삭제(db에처리)
	int delete(String joindeleteid);
	
	//회원 업데이트(db에처리)
	int update(MemberDTO joinupdate);
	
	//로그인
	MemberDTO login(MemberDTO loginidInfo);
	
	//제목으로 검색
	//List<MemberDTO> search(String data);
	//제목,작성자,본문,작성일별로검색
	//List<MemberDTO> search(String data);
	
}
