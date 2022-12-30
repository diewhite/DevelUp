package com.multi.ongo.deal;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class DealBoard_DAOImpl implements DealBoard_DAO{
// <mapper namespace="com.multi.ongo.deal">
	SqlSession sqlSession;
	
	@Autowired
	public DealBoard_DAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}



	//중고거래등록
	public int writeProd(DealBoard_DTO dto) {
		return sqlSession.insert("com.multi.ongo.deal.deal_write", dto);
	}


	//중고거래 전체조회
	@Override
	public List<DealBoard_DTO> boardlist() {
		return sqlSession.selectList("com.multi.ongo.deal.selectAll");
	}


	//중고거래 게시글읽기
	@Override
	public DealBoard_DTO dealRead(int deal_number) {
		return sqlSession.selectOne("com.multi.ongo.deal.dealRead", deal_number);
	}
	
	
	
	
	
}
