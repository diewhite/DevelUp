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
		List<AuctionBoard_DTO> list = dao.auctsell_List(member_id);
		return list;
	}

}
