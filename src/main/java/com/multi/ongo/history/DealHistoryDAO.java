package com.multi.ongo.history;

import java.util.ArrayList;
import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryDAO {
	
	
	//중고거래 판매내역 > 판매중 list 
	List<DealBoard_DTO> sell_List(String member_id, String product_state);
	
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  
	List<DealRequestDTO> dealreqinfo (int deal_number);
}
