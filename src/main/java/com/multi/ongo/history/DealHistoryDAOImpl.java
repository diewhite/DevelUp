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
	
	//중고거래 판매내역 조회 (id받아와서)
//	@Override
//	public List<DealHistoryDTO> sell_List(String member_id) {
//		return sqlsession.selectList("com.multi.ongo.dealhistory.sell_list", member_id);
//	}
	
	//중고거래 판매내역 조회 (test용)
	@Override
	public List<DealHistoryDTO> sell_List() { 
		return sqlsession.selectList("com.multi.ongo.dealhistory.sell_list");
	}


	

}
