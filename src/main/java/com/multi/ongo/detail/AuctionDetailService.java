package com.multi.ongo.detail;

import java.util.List;

import com.multi.ongo.auction.AuctionBoard_DTO;
import com.multi.ongo.history.DealRequestDTO;

public interface AuctionDetailService {
	
	List<AuctionBoard_DTO> auctsell_List(String member_id, String auction_state);
	//경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
	int auctdealreq (AuctionRequestDTO dto);
	
	// 경매거래판매내역 > '거래하기'클릭 시 > 구매자 정보 update & 거래상태 변경 
	int auctdealBtn (AuctionRequestDTO dto, int auction_number);
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  
	List<AuctionRequestDTO> auctreqinfo(int auction_number);
}
