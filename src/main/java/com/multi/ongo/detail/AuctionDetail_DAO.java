package com.multi.ongo.detail;

import java.util.List;

import com.multi.ongo.auction.AuctionBoard_DTO;
import com.multi.ongo.deal.DealBoard_DTO;

public interface AuctionDetail_DAO {

	List<AuctionBoard_DTO> auctsell_List(String member_id);
	//dao 데이터 베이스에 접근하는 객체 service 가 DB에 연결할 수 잇게 해주는 역할 DB를 사용하여 데이터를 조회가나 조작하는 기능 전담
	//경매 판매내역 조회

//	// [deal_table2] 경매거래 판매내역 > 메인(판매중 list)
//	List<AuctionBoard_DTO> auctsell_List(String member_id);
//	
//	// [dealreq] 경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
//		int auctdealreq (AuctionRequestDTO dto); 
//		
//		// [dealreq] 경매거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  ********
//		List<AuctionRequestDTO>auctreqinfo(int auction_number);
//		
//		// [dealreq] 경매거래 판매내역 > 구매자 선택 > 구매자 정보 update
//		int chooseadder (AuctionRequestDTO auctreqDTO); 
//		
//		// [deal_table2] 경매거래판매내역 '거래하기' 클릭시 거래상태 변경 
//		int astateChange (int auction_number);
//
//		//************* 구매 내역 *****************
//		//모든 구매내역 list 
//		List<AuctionBoard_DTO> apurchaseAll(String member_id);
//		
//		//구매내역 list 
//		List<AuctionBoard_DTO> amyreqlist (String member_id);
//		
//		//거래진행중 list 
//		List<AuctionBoard_DTO> amyauctList (String member_id,String auction_state);
//		
//		//구매완료(=판매완료) list
//		List<AuctionBoard_DTO> apurchaseList (String member_id);
//		
//		//구매확정 
//		int auctconfirm (int deal_number);
	
	
	//[deal_table2] 경매거래 판매내역 > 판매중/경매진행중/판매종료 list
	List<AuctionBoard_DTO> auctsell_state(String member_id, String auction_state);
	// [dealreq] 경매거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  ********
//	List<AuctionRequestDTO> auctreqinfo(int auction_number);
	// [dealreq] 경매거래 판매내역 > 구매자 선택 > 구매자 정보 update
	int choosebuyer(AuctionRequestDTO auctreqDTO);
	// [dealreq] 경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 

	int auctdealreq(AuctionRequestDTO dto);
//	************* 구매 내역 *****************
	
	//모든 구매내역 list 
	List<AuctionBoard_DTO> auctpurchaseAll(String member_id);
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	List<AuctionRequestDTO> auctreqinfo(int auction_number);
	//구매내역 list 
	List<AuctionBoard_DTO> myauctionList(String member_id, String auction_state);
	
	}
