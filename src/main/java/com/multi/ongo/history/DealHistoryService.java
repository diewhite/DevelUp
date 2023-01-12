package com.multi.ongo.history;

import java.util.ArrayList;
import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryService {

	
	//중고거래 판매내역 조회 (test용)
	List<DealBoard_DTO> sell_List(String member_id, String product_state);
	
//	//중고거래 판매내역 조회 > 거래요청 유저 정보 
//	List<DealRequestDTO> dealreqinfo (int deal_number);
	
	//중고거래 판매내역 조회 > 거래요청 유저 정보 
	List<DealRequestDTO> dealreqinfo (int deal_number);
}
