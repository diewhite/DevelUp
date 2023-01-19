package com.multi.ongo.detail;

import java.util.List;

import com.multi.ongo.auction.AuctionBoard_DTO;

public interface AuctionDetailService {
	List<AuctionBoard_DTO> auctsell_List(String member_id, String auction_state);
}
