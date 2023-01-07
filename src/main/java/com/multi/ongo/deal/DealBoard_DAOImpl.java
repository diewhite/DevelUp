package com.multi.ongo.deal;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		System.out.println("등록 daoImpl : " +dto);
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


	//중고거래 게시글수정
	@Override
	public int update(DealBoard_DTO dto) {
		System.out.println("dto 수정 : " +dto);
		return sqlSession.update("com.multi.ongo.deal.dealUpdate", dto);
	}


	//중고거래 게시글삭제
	@Override
	public int dealDelete(int deal_number) {
		return sqlSession.delete("com.multi.ongo.deal.dealDelete", deal_number);
	}


	//중고거래 게시글검색(상품명,제목,작성자,작성일)
	@Override
	public List<DealBoard_DTO> searchData(String tag, String searchData) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("tag", tag);
		map.put("searchData", searchData);
		return sqlSession.selectList("com.multi.ongo.deal.searchData", map);
	}


	//중고거래 거래구분선택
	@Override
	public List<DealBoard_DTO> dealType_list(String dealType) {
		return sqlSession.selectList("com.multi.ongo.deal.dealTypeSearch", dealType);
	}
	
	
	
	
}
