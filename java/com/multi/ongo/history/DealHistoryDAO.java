package com.multi.ongo.history;

import java.util.ArrayList;
import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryDAO {
	
//	************* 판매내역 *****************
	
	// [deal_table2] 중고거래 판매내역 > 판매중/거래진행중/판매종료 list
	List<DealBoard_DTO> sellList_state(String member_id, String product_state);
		
	// [deal_table2] 중고거래 판매내역 > 메인(판매중 list) ********
	List<DealBoard_DTO> sell_List(String member_id);
	
	// [dealreq] 중고거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
	int dealreq (DealRequestDTO dto); 
	
	// [dealreq] 중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  ********
	List<DealRequestDTO> dealreqinfo (int deal_number);
	
	// [dealreq] 중고거래 판매내역 > 구매자 선택 > 구매자 정보 update
	int choosebuyer(DealRequestDTO dto);
	
	// [deal_table2] 중고거래판매내역 '거래하기' 클릭시 거래상태 변경 
	int stateChange (int deal_number);
	
//	************* 구매 내역 *****************
	
	//모든 구매내역 list 
	List<DealBoard_DTO> purchaseAll(String member_id);
	
	//구매내역 list 
	List<DealBoard_DTO> myreqlist (String member_id);
	
	//거래진행중 list 
	List<DealBoard_DTO> mydealList (String member_id,String product_state);
	
	//구매완료(=판매완료) list
	List<DealBoard_DTO> purchaseList (String member_id);
	
	//구매확정 
	int dealconfirm (int deal_number);
	
}