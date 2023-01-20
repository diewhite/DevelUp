package com.multi.ongo.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		return dao.auctdealreq(dto);
	}

//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	@Override
	public List<AuctionRequestDTO> auctreqinfo(int auction_number) {
		List<AuctionRequestDTO> list = dao.auctreqinfo(auction_number);
		return list;
	}
		
	@Override
	public int auctdealBtn(AuctionRequestDTO dto, int auction_number) {
		// TODO Auto-generated method stub
		return 0;
	}

	//구매내역 list 
	@Override
	public List<AuctionBoard_DTO> myauctionList(String member_id, String auction_state) {
		// TODO Auto-generated method stub
		return null;
	}

}
