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
	
//	************* 판매 관리 *****************
	
	//중고거래 판매내역 > 판매중/거래진행중/판매종료 list
	@Override
	public List<DealBoard_DTO> sellList_state (String member_id, String product_state) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("product_state", product_state);
		List<DealBoard_DTO> list = sqlsession.selectList("com.multi.ongo.deal.dealselectState", map);
//		System.out.println("=============list ==========="+list);
		return list;
		}	
	

	//중고거래 판매내역 > 메인 (판매중 list)
	@Override
	public List<DealBoard_DTO> sell_List(String member_id) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		List<DealBoard_DTO> list = sqlsession.selectList("com.multi.ongo.deal.saleAll", member_id);
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
//		System.out.println("dao.dealreqinfo()에 deal_number넘어왔나 체크"+deal_number);
		List<DealRequestDTO> sqlresult = sqlsession.selectList("com.multi.ongo.dealreq.dealreqinfo", deal_number);
//		System.out.println("매퍼 실행 결과 :"+sqlresult);
		return sqlresult;
	}

	//중고거래판매내역 '거래하기'클릭 시 구매자 정보 update
	@Override
	public int choosebuyer(DealRequestDTO dto) {
		
		
		int choosebuyer = sqlsession.update("com.multi.ongo.dealreq.choicebuyer", dto);
//		System.out.println("거래하기 클릭 -> dealreq테이블 update : "+choosebuyer);
		return choosebuyer;
	}
	
	//중고거래판매내역 '거래하기' 클릭시 거래상태 변경 
	@Override
	public int stateChange(int deal_number) {
		int stateChange = sqlsession.update("com.multi.ongo.deal.stateChange", deal_number);
//		System.out.println("거래하기 클릭 -> deal_table2 테이블 update : "+stateChange);
		return stateChange;
	}

	
//	************* 구매 관리 *****************

	//구매내역 list 
		@Override
		public List<DealBoard_DTO> purchaseAll(String member_id) {
			// TODO Auto-generated method stub
			return null;
		}
	
	//구매내역 list 
	@Override
	public List<DealBoard_DTO> myreqlist(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}

	//거래진행중 list 
	@Override
	public List<DealBoard_DTO> mydealList(String member_id,String product_state) {
		// TODO Auto-generated method stub
		return null;
	}

	//구매완료(=판매완료) list
	@Override
	public List<DealBoard_DTO> purchaseList(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}

	//구매확정
	@Override
	public int dealconfirm(int deal_number) {
		// TODO Auto-generated method stub
		return 0;
	}



	

	


	
	
	
	
	

	

}
