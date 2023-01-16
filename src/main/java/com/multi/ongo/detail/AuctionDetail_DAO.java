package com.multi.ongo.detail;

import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface AuctionDetail_DAO {
	//경매 판매내역 조회 
	List<AuctionDetail_DTO> auctionsell_List();
}
