package com.multi.ongo.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.multi.ongo.auction.AuctionBoard_DTO;
@Service
	public class AuctionDetailServiceImpl implements AuctionDetailService {
	AuctionDetail_DAO dao;
	
	@Autowired
	public AuctionDetailServiceImpl(AuctionDetail_DAO dao) {
	super();
	this.dao = dao;
}
//	************* 경매 관리 *****************
	
	
	//경매거래 판매내역list 조회 
	@Override
	public List<AuctionBoard_DTO> auctsell_List(String member_id, String auction_state) {
		//System.out.println("service test"+member_id);
		List<AuctionBoard_DTO> list = null;
		if(auction_state!=null) {
		if(auction_state.equals("all")) {
			list = dao.auctsell_List(member_id);
		}else {
			list = dao.auctsell_state(member_id, auction_state);
		}
	 }
		return list;
	}

	// [dealreq] 경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
		@Override
	public int auctdealreq(AuctionRequestDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	

//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	@Override
	public List<AuctionRequestDTO> auctreqinfo(int auction_number) {
		List<AuctionRequestDTO> list = dao.auctreqinfo(auction_number);
		return list;
	}
	// 중고거래판매내역 > '거래하기'클릭 시 > 구매자 정보 update & 거래상태 변경 
	@Override
	public int auctdealBtn(AuctionRequestDTO dto, int auction_number) {
		// TODO Auto-generated method stub
		return 0;
	}
	//	************* 구매 관리 *****************
	//경매거래 구매내역 list > mysealList 로 대체 
	public List<AuctionBoard_DTO> myauctreqlist(String member_id, String auction_state){
		return null;
	}
	
	
	//경매거래 구매내역list 조회 > 전체 list & 거래요청 list  & 거래진행중/구매완료 list 
	public List<AuctionBoard_DTO> myauctList(String member_id, String auction_state) {
		List<AuctionBoard_DTO> list = null;
		if(auction_state!=null) {
			
			if(auction_state.equals("all")) {	//  모든구매내역 list
				list = dao.auctpurchaseAll(member_id);			
				
			}else if(auction_state.equals("경매중")) {	//경매중	
			list = dao.myauctreqlist(member_id, auction_state); 
			
			}else if(auction_state.equals("경매완료")) { //경매완료 list 
				list = dao.auctpurchaseList(member_id, auction_state);
			}
	}
		return list;
	}


	//구매완료(=판매완료) list > mysealList 로 대체 
	@Override
	public List<AuctionBoard_DTO> auctpurchaseList(String member_id, String auction_state) {
		return null;
	}


	

}
