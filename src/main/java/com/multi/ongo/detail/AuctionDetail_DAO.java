package com.multi.ongo.detail;

import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface AuctionDetail_DAO {
	//dao 데이터 베이스에 접근하는 객체 service 가 DB에 연결할 수 잇게 해주는 역할 DB를 사용하여 데이터를 조회가나 조작하는 기능 전담
	//경매 판매내역 조회
	// [deal_table2] 경매거래 판매내역 > 판매중/경매진행중/판매종료 list
	List<AuctionDetail_DTO> auctsell_state(String member_id, String auction_state);
	// [deal_table2] 경매거래 판매내역 > 메인(판매중 list
	List<AuctionDetail_DTO> auctsell_List(String member_id);
	// [dealreq] 경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
		int auctdealreq (AuctionRequestDTO dto); 
		
		// [dealreq] 경매거래 판매내역 > 판매중 list > 거래요청 유저 정보 list  ********
		List<AuctionRequestDTO> auctreqinfo (int auction_number);
		
		// [dealreq] 경매거래 판매내역 > 구매자 선택 > 구매자 정보 update
		int choosebuyer (AuctionRequestDTO auctreqDTO); 
		
		// [deal_table2] 경매거래판매내역 '거래하기' 클릭시 거래상태 변경 
		int stateChange (int auction_number);
}
