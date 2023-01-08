package com.multi.ongo.member;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAOImpl implements MemberDAO{
	//mybatis의 핵심 클래스인 SqlSession을 이용해서 sql문이 실행
	SqlSession sqlSession;
	
	@Autowired //오토와이어트 : 자동으로 적용 받을수 있게 처리
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}
	@Override //MemberDTO 참조형식 
	public int insert(MemberDTO joininsert) { //회원가입>정보등록
		System.out.println("DAO회원가입확인중"+joininsert);
		return sqlSession.insert("com.multi.ongo.member.joinwrite", joininsert);
		// <insert id="joinwrite" parameterType="memberP"> 에서 id="여기이름" 을 member.xml 에서가져다쓴다
	}
	
	
	@Override
	public List<MemberDTO> joinlist() {  // 관리자> 회원목록> 전체리스트
		return sqlSession.selectList("com.multi.ongo.member.selectall");
		
	}

	@Override
	public MemberDTO memberIdRead(String joinread) {  // 관리자> 회원목록> 전체리스트>상세보기

		return sqlSession.selectOne("com.multi.ongo.member.idRead",joinread);
	}

	@Override
	public int delete(String joindeleteid) {  //삭제
		return sqlSession.delete("com.multi.ongo.member.idDelete",joindeleteid);
	}

	@Override
	public int update(MemberDTO joinupdate) { //수정
		//System.out.println("업데이트확인중"+joinupdate);
		return sqlSession.update("com.multi.ongo.member.idUpdate",joinupdate);
	}
	
	@Override
	public List<MemberDTO> msearch(String membersearch) {// 관리자> 회원목록> 전체리스트> 이름검색
		return sqlSession.selectList("com.multi.ongo.member.nameSearch",membersearch);
		
	}

	@Override
	public MemberDTO login(MemberDTO loginidInfo) { //로그인 
		MemberDTO login = sqlSession.selectOne("com.multi.ongo.member.login",loginidInfo);
		return login;
	}
	
	

}
