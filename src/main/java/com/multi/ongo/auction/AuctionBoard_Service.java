package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_Service {
	
	//글등록
	public int writeProd(AuctionBoard_DTO dto);
		 
//	//중고거래
	public List<AuctionBoard_DTO> boardlist();
	
//	List<AuctionBoard_DTO> boardlist();

	//게시글읽기
	public AuctionBoard_DTO auctionRead(int auction_no);

	//중고거래
	int update(AuctionBoard_DTO dto);
		
//	//중고거래 게시�? ?��?��
//	int auctionDelete(String id);
	
	//경매시간 종료 된 항목 거래 종료로 업데이트
	public int auctionStatus();
	
	//경매게시판 글 삭제 -by태원 __________________________________________
	public int auctionDelete(int auction_number);
	//______________________________________________________________
}
