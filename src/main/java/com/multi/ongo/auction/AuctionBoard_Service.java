package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_Service {
	
	//ê±°ë˜?“±ë¡?
	public int writeProd(AuctionBoard_DTO dto);
		 
	//ì¤‘ê³ ê±°ë˜ ? „ì²´ì¡°?šŒ
	public List<AuctionBoard_DTO> boardlist();

	//ì¤‘ê³ ê±°ë˜ ê²Œì‹œê¸??½ê¸?
		public AuctionBoard_DTO dealRead(int deal_number);

	//ì¤‘ê³ ê±°ë˜ ê²Œì‹œê¸? ?—…?°?´?Š¸(?ˆ˜? •)
	int update(AuctionBoard_DTO dto);
		
	//ì¤‘ê³ ê±°ë˜ ê²Œì‹œê¸? ?‚­? œ
	int auctionDelete(String id);
}
