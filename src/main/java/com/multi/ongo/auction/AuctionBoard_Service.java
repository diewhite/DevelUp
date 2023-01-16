package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_Service {
	
	//거래
	public int writeProd(AuctionBoard_DTO dto);
		 
//	//중고거래
	public List<AuctionBoard_DTO> boardlist(String auction_category);
	
//	List<AuctionBoard_DTO> boardlist();

	//게시글읽기
	public AuctionBoard_DTO auctionRead(int auction_no);

	//중고거래
	int update(AuctionBoard_DTO dto);
		
//	//중고거래 게시�? ?��?��
//	int auctionDelete(String id);
	
	
	
	
	//경매게시판 글 삭제 -by태원 __________________________________________
	public int auctionDelete(int auction_number);
	//______________________________________________________________
}
