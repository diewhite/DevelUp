package com.multi.ongo.history;


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
	
	//중고거래 판매내역 > 메인 (판매중 list)
	@Override
	public List<DealBoard_DTO> sellList_state (String member_id, String product_state) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("product_state", product_state);
		List<DealBoard_DTO> list = sqlsession.selectList("com.multi.ongo.deal.dealselectState", map);
//		System.out.println("=============list ==========="+list);
		return list;
		}	
	
	//중고거래 판매내역 > 판매중/거래진행중/판매종료 list
	@Override
	public List<DealBoard_DTO> sell_List(String member_id) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		List<DealBoard_DTO> list = sqlsession.selectList("com.multi.ongo.deal.saleAll", member_id);
//		System.out.println("=============list ==========="+list);
		return list;
	}
	
	//중고거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
		@Override
		public int dealreq(DealRequestDTO dto) {
			return sqlsession.insert("com.multi.ongo.dealreq.dealreq", dto);
		}
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	@Override
	public List<DealRequestDTO> dealreqinfo(int deal_number) {
		System.out.println("dao.dealreqinfo()에 deal_number넘어왔나 체크"+deal_number);
		return sqlsession.selectList("com.multi.ongo.dealreq.dealreqinfo", deal_number);
	}

	//중고거래판매내역 '거래하기'클릭 시 구매자 정보 update
	@Override
	public int choosebuyer(String member_id, int deal_number) {
		// TODO Auto-generated method stub
		return 0;
	}

	//중고거래판매내역 '거래하기' 클릭시 거래상태 변경 
	@Override
	public int stateChange(int deal_number) {
		// TODO Auto-generated method stub
		return 0;
	}



	

	


	
	
	
	
	

	

}
