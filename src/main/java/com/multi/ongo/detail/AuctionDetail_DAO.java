package com.multi.ongo.detail;

import java.util.List;

import com.multi.ongo.auction.AuctionBoard_DTO;
import com.multi.ongo.deal.DealBoard_DTO;

public interface AuctionDetail_DAO {

	//[deal_table2] 경매거래 판매내역 > 판매중/경매진행중/판매종료 list
	List<AuctionBoard_DTO> auctsell_state(String member_id, String auction_state);
	//경매거래 경매내역 > 메인(경매중 list) ********
	List<AuctionBoard_DTO> auctsell_List(String member_id);

	// [dealreq] 경매거래 판매내역 > 구매자 선택 > 구매자 정보 update
	int choosebuyer(AuctionRequestDTO auctreqDTO);
	// [dealreq] 경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
	int auctdealreq(AuctionRequestDTO dto);
	
	
//	************* 구매 내역 *****************
	
	//모든 구매내역 list 
	List<AuctionBoard_DTO> auctpurchaseAll(String member_id);
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	List<AuctionRequestDTO> auctreqinfo(int auction_number);
	
	///거래진행중 list 
	List<AuctionBoard_DTO> myauctreqlist(String member_id, String auction_state);
	
	//구매완료(=판매완료) list
	List<AuctionBoard_DTO> auctpurchaseList(String member_id, String auction_state);

	}
