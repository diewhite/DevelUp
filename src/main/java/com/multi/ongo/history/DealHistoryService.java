package com.multi.ongo.history;

import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface DealHistoryService {

	//중고거래 판매내역 조회
	List<DealBoard_DTO> sell_List();
}
