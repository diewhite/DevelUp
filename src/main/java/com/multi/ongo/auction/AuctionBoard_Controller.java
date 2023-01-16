package com.multi.ongo.auction;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuctionBoard_Controller {
	AuctionBoard_Service service;

	@Autowired
	public AuctionBoard_Controller(AuctionBoard_Service service) {
		super();
		this.service = service;
	}

	// 글쓰러가기
	@RequestMapping("/auction/auctionwrite")
	public String auctionWrite() {
		return "auctionWrite";
	}

	@RequestMapping("auction_Write.do") // get vs post
	public String auctionWrite(AuctionBoard_DTO dto) {

		/**
		 * 컨트롤러 어떤 요청을 받아서 무엇을 해야할지 결정하는 역할. 쓰는을 하려면 유저 데이터를 받아옴 (다음 뷰 , 또는 디비에 반영될 데이
		 * 받아온 데이터를 DB에 넣음 (디비에 접근, 데이터 조작) 다 완료되면 다른 페이지로 이동함
		 */

		service.writeProd(dto);
		return "redirect:/auction_listAll.do?auction_state=all";
	}

	// 경매 거래게시글 전체 리스트
	@RequestMapping("/auction/auctionlistAll")
	public ModelAndView listall() {
		ModelAndView mav = new ModelAndView("auctionBoard");
		List<AuctionBoard_DTO> boardlist = service.boardlist();
		mav.addObject("boardlist", boardlist);
		return mav;
	}

//	경매 거래게시글 카테고리 조회 
//	@RequestMapping("/auction/auctionBoard") 
//	public ModelAndView auctionList(String auction_category) {
//		System.out.println("auction_category가져왔나 테스트"+auction_category);
//		ModelAndView mav = new ModelAndView("auctionBoard");
//		List<AuctionBoard_DTO> boardlist = service.boardlist(auction_category);
//		System.out.println("auctionList테스트찍어보기"+boardlist);
//		mav.addObject("auction_category", auction_category);
//		mav.addObject("boardlist", boardlist);
// 		return mav;
//	}
	// 글다쓰고 리스트로 나올때
	@RequestMapping("/auction/auction")
	public String auctionWriteBoard() {
		return "auctionWriteBoard";

	}

	// 경매 하기 및 상세페이지
	@RequestMapping("/auction/auctionbid")
	public String auctionBid() {
		return "auctionBid";

	}

	// 경매게시판 글 읽기
	@RequestMapping("/auction/auctionRead")
	public String auctionRead(int auction_no, Model model) {
		AuctionBoard_DTO board = service.auctionRead(auction_no);
		System.out.println("no:" + auction_no);
		System.out.println("start:" + board.getWrite_date());
		System.out.println("end:" + board.getEnd_date());
		model.addAttribute("board", board);
		return "auctionRead";
	}
}