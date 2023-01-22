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
	
	
	//중고거래 판매내역 > 메인 (판매중 list)
		@Override
		public List<DealBoard_DTO> sell_List(String member_id) {
			Map<String,String> map = new HashMap<String, String>();
			map.put("member_id", member_id);
			List<DealBoard_DTO> list = sqlsession.selectList("com.multi.ongo.deal.saleAll", member_id);
			System.out.println("판매 전체 리스트 조회"+list);
			return list;
		}

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

	//중고거래판매내역 '거래하기'클릭 시 구매자 정보 update =>성공 
	@Override
	public int choosebuyer(DealRequestDTO dto) {
		//System.out.println("choosebuyer dao로 넘어온 파라미터"+dto);
		int choosebuyer = sqlsession.update("com.multi.ongo.dealreq.choicebuyer_ver2", dto);
		//System.out.println("거래하기 클릭 -> dealreq테이블 update : "+choosebuyer);
		return choosebuyer;
	}
	
	//중고거래판매내역 '거래하기' 클릭시 deal_table2에 구매자 id 저장 =>성공 
	@Override
	public int addbuyid(String req_id, int deal_number) {
		//System.out.println("addbuyid로 넘어온 파라미터 :"+req_id+deal_number);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("req_id", req_id);
		map.put("deal_number", deal_number);
		int addbuyidResult = sqlsession.update("com.multi.ongo.deal.addBuyerID", map);
		//System.out.println("거래하기 클릭 -> addbuyidResult() 실행결과:"+addbuyidResult);
		return addbuyidResult;
	}
	
	//중고거래판매내역 '거래하기' 클릭시 거래상태 변경 => 성공 
	@Override
	public int stateChange(int deal_number) {
		int stateChange = sqlsession.update("com.multi.ongo.deal.stateChange", deal_number);
		//System.out.println("거래하기 클릭 -> deal_table2 테이블 update : "+stateChange);
		return stateChange;
	}
	//중고거래판매내역 '거래취소' 클릭시 dealreq 구매자 정보 null 처리 
	@Override
	public int dropBuyerData(int deal_number) {
		// TODO Auto-generated method stub
		return sqlsession.update("com.multi.ongo.dealreq.dropBuyerData", deal_number);
	}
	
	//중고거래판매내역 '거래취소' 클릭시 deal_table2에 거래상태 변경  
	@Override
	public int sellingcancle (int deal_number) {
		// TODO Auto-generated method stub
		return sqlsession.update("com.multi.ongo.deal.sellingcacle", deal_number);
	}

	
//	************* 구매 관리 *****************

	
	//중고거래 구매내역 > 전체 list
	@Override
	public List<DealBoard_DTO> purchaseAll(String member_id) {
		return sqlsession.selectList("com.multi.ongo.deal.purchaseAll", member_id);
	}
	
	//구매내역(=판매중) list 
	@Override
	public List<DealBoard_DTO> myreqlist(String member_id, String product_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("product_state", product_state);
		return sqlsession.selectList("com.multi.ongo.deal.myreqlist", map);
	}

	//거래진행중 list 
	@Override
	public List<DealBoard_DTO> tradingList(String member_id, String product_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("product_state", product_state);
		return sqlsession.selectList("com.multi.ongo.deal.tradingList", map);
	}
	
	//구매완료(=판매완료) list
	@Override
	public List<DealBoard_DTO> purchaseList(String member_id, String product_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("product_state", product_state);
		return sqlsession.selectList("com.multi.ongo.deal.purchaseList", map);
	}

	//구매확정
	@Override
	public int dealconfirm(int deal_number) {
		int result = sqlsession.update("com.multi.ongo.deal.dealconfirm", deal_number);
		return result;
	}

	


	

	


	
	
	
	
	

	

}
