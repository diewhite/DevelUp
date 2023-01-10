package com.multi.ongo.history;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.ongo.deal.DealBoard_DTO;

@Repository
public class DealHistoryDAOImpl implements DealHistoryDAO {
	SqlSession sqlsession;
	
	@Autowired
	public DealHistoryDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}
	
	//중고거래 판매내역 조회 (dealboardDTO)
	@Override
	public List<DealBoard_DTO> sell_List() { 
		return sqlsession.selectList("com.multi.ongo.deal.selectAll");
	}

	//중고거래 판매내역 조회 > 거래요청 유저 정보 
	@Override
	public List<DealRequestDTO> dealreqinfo(int deal_number) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("com.multi.ongo.dealreq", deal_number);
	}
	
	

	

}
