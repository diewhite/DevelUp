package com.multi.ongo.deal;

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



	//거래등록
	public int writeProd(DealBoard_DTO dto) {
		return sqlSession.insert("com.multi.ongo.deal.deal_write", dto);
	}
}
