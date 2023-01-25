package com.multi.ongo.auction;

import java.util.List;



public interface AuctionBoard_DAO {
	public AuctionBoardUpFile_DTO getFile(String boardno);
	public AuctionBoardUpFile_DTO getFileList(String boardno);
	//첨부파일을 저장하기 위한 메소드	
		int insertFile(AuctionBoardUpFile_DTO boardfile);
	//게시글 등록
	public int writeProd(AuctionBoard_DTO dto);
	
	//게시글읽기
	public AuctionBoard_DTO auctionRead(int auction_number);
	
	//전체조회
	public List<AuctionBoard_DTO> boardlist();
	
	//카테고리로 조회
	public List<AuctionBoard_DTO> findByCategory(String auction_category);
		
	// 게시글읽기
	public AuctionBoard_DTO auctionlist(int auction_number);
	
	//게시글수정
	int update(AuctionBoard_DTO dto);
	
	//경매시간 종료 된 항목 거래 종료로 업데이트
	public int auctionStatus();
	
	//경매게시판 글 삭제 -by태원 __________________________________________
		public int auctionDelete(int auction_number);
		List<AuctionBoard_DTO> auctionSearch(String searchData);
		//______________________________________________________________
		
	//경매내역 조회
	public List<AuctionBoard_DTO> bidList(int auction_number);
	
	//경매입찰
	public int bidding(AuctionBoard_DTO dto);
	
	//현재가격 업데이트
	public int updatePrice(AuctionBoard_DTO dto);
}