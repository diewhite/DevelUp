package com.multi.ongo.auction;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AuctionBoard_ServiceImpl implements AuctionBoard_Service {

	AuctionBoard_DAO dao;
	
	@Autowired
	public AuctionBoard_ServiceImpl(AuctionBoard_DAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int writeProd(AuctionBoard_DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}
	
//	@Override
//	public List<AuctionBoard_DTO> boardlist() {
//		return dao.boardlist();
//	}
//	
	//경매 게시판 전체 조회 + 카테고리 조회 
	@Override
	public List<AuctionBoard_DTO> boardlist(String auction_category) {
		List<AuctionBoard_DTO> list = null;
		if(auction_category.equals("all")) {
			list = dao.boardlist();
		}else {
			list = dao.findByCategory(auction_category);
		}
		return list;
	}

	@Override
	public AuctionBoard_DTO auctionRead(int auction_no) {
		return dao.auctionRead(auction_no);
	}

	@Override
	public int update(AuctionBoard_DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int auctionDelete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
