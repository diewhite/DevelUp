package com.multi.ongo.auction;

import java.util.List;

import com.multi.ongo.deal.DealBoard_DTO;

public interface AuctionBoard_DAO {
	
	
	//중고거래등록
	public int writeProd(AuctionBoard_DTO dto);
	 
	//중고거래 전체조회
	public List<AuctionBoard_DTO> boardlist();
	
	//중고거래 게시글읽기
	public AuctionBoard_DTO dealRead(int deal_number);

	
	//중고거래 게시글 업데이트(수정)
	int update(AuctionBoard_DTO dto);
	
	
	//중고거래 게시글 삭제
	int dealDelete(String member_id);
	
	//하단검색
	List<DealBoard_DTO> searchData(String tag, String searchData);
		
	//중고거래 거래구분선택
	public List<DealBoard_DTO> dealType_list(String dealType);	
