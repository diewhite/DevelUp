package com.multi.ongo.member;

import java.util.List;

public interface MemberService {

	//회원가입 (db에처리)
    int insert(MemberDTO joininsert);

	//아이디 중복체크
	MemberDTO idCheck(String member_id);
    
    //전체리스트 
    List<MemberDTO> joinlist();

    //회원 상세조회- 읽기 아이디 하나 한게시글에 대한거 한문자열에 대한거 
      MemberDTO memberIdRead(String joinread);

    //회원 삭제
    int delete(String joindeleteid);

    //회원 업데이트
    int update(MemberDTO joinupdate);

    //아이디 찾기
    MemberDTO findId(MemberDTO userInfo);
    
    //비밀번호 찾기
    MemberDTO findPass(MemberDTO userInfo);
    
    //비밀번호 변경
    int passModi(MemberDTO userInfo);

    //게시글 이름으로 검색하기 
  	List<MemberDTO> msearch(String membersearch);
  		
    //로그인
    MemberDTO login(MemberDTO loginidInfo);

    //회원탈퇴
    int unsign(String member_id);
}

/*
스프링의 약속 마지막에서 결과가 나오는게 인트가 나오기 때문에 반환값 인트
 */
