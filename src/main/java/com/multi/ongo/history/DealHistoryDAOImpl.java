package com.multi.ongo.history;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//중고거래 판매내역 > 판매중 list 
	@Override
	public List<DealBoard_DTO> sell_List(String member_id, String product_state) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("product_state", product_state);
		List<DealBoard_DTO> list = sqlsession.selectList("com.multi.ongo.deal.dealselectAll", map);
		System.out.println("=============list ==========="+list);
		return list;
		}	

	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	@Override
	public List<DealRequestDTO> dealreqinfo(int deal_number) {

		return sqlsession.selectList("com.multi.ongo.dealreq.deal_req", deal_number);
	}

	


	
	
	
	
	

	

}
