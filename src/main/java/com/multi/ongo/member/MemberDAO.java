package com.multi.ongo.member;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.multi.ongo.deal.DealBoard_DTO;
//mybatis의 SqlSessio을 이용해서 작업
public interface MemberDAO {
	// 회원가입- 등록(db에처리)
	int insert(MemberDTO joininsert);
	//아이디 중복체크	int nickCheck(String member_id) throws Exception;

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
	
	//관리자> 이름으로 검색
	List<MemberDTO> msearch(String membersearch);
	
	
	
	
}




