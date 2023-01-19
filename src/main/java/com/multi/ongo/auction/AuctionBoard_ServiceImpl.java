package com.multi.ongo.auction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuctionBoard_ServiceImpl implements AuctionBoard_Service {
	/**
	 * 비지니스 로직에 관련된 코드를 여기다 작성
	 */
	AuctionBoard_DAO dao;

	@Autowired
	public AuctionBoard_ServiceImpl(AuctionBoard_DAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public AuctionBoardUpFile_DTO getFileList(String boardno) {
		// TODO Auto-generated method stub
		return dao.getFileList(boardno);
	}
	
//	게시글등록
//	=> 게시글기본정보 저장, 첨부된 파일에 대한 정보 저장
//	dao클래스에 정의된 두 개의 메소드를 호출
	@Override
	public int insertFile( AuctionBoardUpFile_DTO boardfile) {
		dao.insertFile(boardfile);
		return 0;
	}
	@Override
	public AuctionBoardUpFile_DTO getFile(String boardno) {
		// TODO Auto-generated method stub
		return dao.getFile(boardno);
	}
	
	public int writeProd(AuctionBoard_DTO dto) {

		/**
		 * values(auction_no2.nextval, #{member_id}, #{auction_state},
		 * #{auction_category}, '경매중', #{auction_title}, #{start_price},
		 * #{board_content}, #{list_photo})
		 * 
		 * 경매중-> 경매완료
		 * 
		 * 1.경매중으로 입력 2.경매중이란 데이터를 경매완료로 변경해서 입력
		 * 
		 * DB 작업
		 * 
		 * 경매라는 서비스의 특성
		 */

		return dao.writeProd(dto);
	}

	@Override
	public List<AuctionBoard_DTO> boardlist() {
		return dao.boardlist();
	}

	// 경매 게시판 전체 조회 + 카테고리 조회
	// @Override
//	public List<AuctionBoard_DTO> boardlist(String auction_category) {
//		List<AuctionBoard_DTO> list = null;
//		if(auction_category.equals("all")) {
//			list = dao.boardlist();
//		}else {
//			list = dao.findByCategory(auction_category);
//		}
//		return list;
//	}

	@Override
	public AuctionBoard_DTO auctionRead(int auction_number) {
		return dao.auctionRead(auction_number);
	}

	@Override
	public int update(AuctionBoard_DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	//경매게시판 글 삭제 -by태원 __________________________________________
	@Override
	public int auctionDelete(int auction_number) {
		dao.auctionDelete(auction_number);
		return 0;
	}

	//________________________________________________________________

	@Override
	public int auctionStatus() {
		return dao.auctionStatus();
	}

	@Override
	public List<AuctionBoard_DTO> bidList(int auction_number) {
		return dao.bidList(auction_number);
	}

	@Override
	public int bidding(AuctionBoard_DTO dto) {
		return dao.bidding(dto);
	}

	@Override
	public int updatePrice(AuctionBoard_DTO dto) {
		return dao.updatePrice(dto);
	}


}
