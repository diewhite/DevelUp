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

	//중고거래
	@Override
	public int writeProd(AuctionBoard_DTO dto) {
		return dao.writeProd(dto);
	}

	//중고거래
	@Override
	public List<AuctionBoard_DTO> boardlist() {
		return dao.boardlist();
	}
	
	//중고거래 게시
	@Override
	public AuctionBoard_DTO dealRead(int auction_number) {
		return dao.auctionRead(auction_number);
	}
	//중고거래 게시
	@Override
	public int update(AuctionBoard_DTO dto) {
		return dao.update(dto);
	}

	@Override
	public int auctionDelete(String id) {
		return dao.auctionDelete(id);
	}

}
