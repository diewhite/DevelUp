package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_DAO {
	
	//ì¤‘ê³ ê±°ë˜?“±ë¡?
	public int writeProd(AuctionBoard_DTO dto);
	 
	//ì¤‘ê³ ê±°ë˜ ? „ì²´ì¡°?šŒ
	public List<AuctionBoard_DTO> boardlist();
	
	//ì¤‘ê³ ê±°ë˜ ê²Œì‹œê¸??½ê¸?
	public AuctionBoard_DTO auctionRead(int auction_number);

	
	//ì¤‘ê³ ê±°ë˜ ê²Œì‹œê¸? ?—…?°?´?Š¸(?ˆ˜? •)
	int update(AuctionBoard_DTO dto);
	
	
	//ì¤‘ê³ ê±°ë˜ ê²Œì‹œê¸? ?‚­? œ
	int auctionDelete(String id);
}
