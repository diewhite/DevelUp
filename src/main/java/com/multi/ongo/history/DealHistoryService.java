package com.multi.ongo.history;


import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryService {

	
	//중고거래 판매내역list 조회 (판매중/거래진행중/판매종료)
	List<DealBoard_DTO> sell_List(String member_id, String product_state);
	
	//중고거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
	int dealreq (DealRequestDTO dto); 
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  
	List<DealRequestDTO> dealreqinfo (int deal_number);
	
	// 중고거래판매내역 > '거래하기'클릭 시 > 구매자 정보 update & 거래상태 변경 
	int dealBtn (String req_id, int deal_number, int dealreq_no, String member_id);
	
	//중고거래판매내역 '거래취소' 클릭시 > deal_table2에 거래상태 변경 & dealreq 구매자 정보 null 처리 
	int dealcancle (int deal_number);
	
	

//	************* 구매 내역 *****************
	
	//구매내역 list 
	List<DealRequestDTO> myreqlist (String member_id, String product_state);
	
	//중고거래 구매내역list 조회 > 전체 list & 구매요청 list  & 거래진행중/구매완료 list 
	List<DealBoard_DTO> mydealList(String member_id, String product_state);
	
	//구매완료(=판매완료) list
	List<DealRequestDTO> purchaseList (String member_id, String product_state);
	
	//구매확정 
	int dealconfirm (int deal_number);
	
	
}

