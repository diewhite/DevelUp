package com.multi.ongo.history;

import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryDAO {
	
	//중고거래 판매내역 조회 ()
	List<DealHistoryDTO> sell_List2(String member_id);
	
	//중고거래 판매내역 조회 (test용)
	List<DealBoard_DTO> sell_List();
	
}
