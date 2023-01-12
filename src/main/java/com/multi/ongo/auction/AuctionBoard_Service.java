package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_Service {
	
	//거래
	public int writeProd(AuctionBoard_DTO dto);
		 
	//중고거래
	public List<AuctionBoard_DTO> boardlist();

	//중고거래
		public AuctionBoard_DTO dealRead(int deal_number);

	//중고거래
	int update(AuctionBoard_DTO dto);
		
	//중고거래 게시�? ?��?��
	int auctionDelete(String id);
}
