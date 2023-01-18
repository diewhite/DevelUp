package com.multi.ongo.detail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.ongo.deal.DealBoard_DTO;
import com.multi.ongo.history.DealHistoryDAO;

@Repository
public class AuctionDetailDAOImpl implements DealHistoryDAO {
	SqlSession sqlsession;
	
	@Autowired
	public AuctionDetailDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}
//	************* 판매 관리 *****************
	
	//중고거래 판매내역 > 판매중/거래진행중/판매종료 list
	@Override
	public List<AuctionBoard_DTO> sellList_state (String member_id, String product_state) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("auction_state", auction_state);
		List<AuctionBoard_DTO.java> list = sqlsession.selectList("com.multi.ongo.deal.dealselectState", map);
//		System.out.println("=============list ==========="+list);
		return list;
		}
	
}