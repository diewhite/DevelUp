package com.multi.ongo.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{

	SqlSession sqlSession;
	
	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}
	@Override //MemberDTO 참조형식 
	public int insert(MemberDTO joininsert) { //등록
		return sqlSession.insert("com.multi.ongo.member.write", joininsert);// <insert id="write" parameterType="memberP"> 에서 id="여기이름" 을 가져다쓴다
	}

	@Override
	public List<MemberDTO> joinlist() {  // 전체리스트
		return sqlSession.selectList("com.multi.ongo.member.selectall");
	}

	@Override
	public MemberDTO memberIdRead(String joinread) {  //읽기
		return sqlSession.selectOne("com.multi.ongo.member.idRead",joinread);
	}

	@Override
	public int delete(String joindeleteid) {  //삭제
		return sqlSession.delete("com.multi.ongo.member.idDelete",joindeleteid);
	}

	@Override
	public int update(MemberDTO joinupdate) { //수정
		return sqlSession.update("com.multi.ongo.member.idUpdate",joinupdate);
	}

	@Override
	public MemberDTO login(MemberDTO loginidInfo) { //로그인 
		MemberDTO login = sqlSession.selectOne("com.multi.ongo.member.login",loginidInfo);
		return login;
	}

}
