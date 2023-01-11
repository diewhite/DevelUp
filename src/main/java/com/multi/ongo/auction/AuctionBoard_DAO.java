package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_DAO {
	
	public int writeProd(AuctionBoard_DTO dto);
	 
	public List<AuctionBoard_DTO> boardlist();
	

	public AuctionBoard_DTO dealRead(int deal_number);

	
	int update(AuctionBoard_DTO dto);
	
	
	int dealDelete(String member_id);
	
		List<AuctionBoard_DTO> searchData(String tag, String searchData);
}

