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
	@Override
	public int insert(MemberDTO dto) { //등록
		return 0;
	}

	@Override
	public List<MemberDTO> memberlist() {  // 전체리스트
		return null;
	}

	@Override
	public MemberDTO memberIdRead(String id) {  //읽기
		return null;
	}

	@Override
	public int delete(String id) {  //삭제
		return 0;
	}

	@Override
	public int update(MemberDTO dto) { //수정
		return 0;
	}

	@Override
	public MemberDTO login(MemberDTO idInfo) { //로그인 
		return null;
	}

}
