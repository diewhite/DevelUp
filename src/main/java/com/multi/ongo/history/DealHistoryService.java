package com.multi.ongo.history;

import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryService {

	//중고거래 판매내역 조회 (id받아와서)
//	ListList<DealHistoryDTO> sell_List(String member_id);
	
	//중고거래 판매내역 조회 (test용)
	List<DealHistoryDTO> sell_List();
}
