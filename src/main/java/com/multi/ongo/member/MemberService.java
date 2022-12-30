package com.multi.ongo.member;

import java.util.List;

public interface MemberService {

	//등록
    int insert(MemberDTO dto);
    //전체리스트 
    List<MemberDTO> memberlist();

    //회원 상세조회- 읽기 아이디 하나 한게시글에 대한거 한문자열에 대한거 
      MemberDTO memberIdRead(String id);

    //회원 삭제
    int delete(String id);

    //회원 업데이트
    int update(MemberDTO dto);

    //로그인
    MemberDTO login(MemberDTO idInfo);
}

/*


왜 인트가 들어가? 마지막에서 결과가 나오는게 인트가나와요
반환값 인트로 해놔서 인트로 나온다 

 */