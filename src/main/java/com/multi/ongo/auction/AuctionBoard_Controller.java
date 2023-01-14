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
	
//	//경매 거래게시글 전체 리스트
//	@RequestMapping("/auction/auctionlistAll")
//	public ModelAndView listall() {
//		ModelAndView mav = new ModelAndView("auctionBoard");
//		List<AuctionBoard_DTO> boardlist = service.boardlist();
//		mav.addObject("boardlist", boardlist);
//		return mav;
//	}
	
//	경매 거래게시글 카테고리 조회 
	@RequestMapping("/auction/auctionBoard") 
	public ModelAndView auctionList(String auction_category) {
		System.out.println("auction_category가져왔나 테스트"+auction_category);
		ModelAndView mav = new ModelAndView("auctionBoard");
		List<AuctionBoard_DTO> boardlist = service.boardlist(auction_category);
		System.out.println("auctionList테스트찍어보기"+boardlist);
		mav.addObject("auction_category", auction_category);
		mav.addObject("boardlist", boardlist);
 		return mav;
	}

	@RequestMapping("/auction/auctionwrite") 
	public String auctionWrite() {
		return "auctionWrite";
	
		}
	@RequestMapping("/auction/auction") 
	public String auctionWriteBoard() {
		return "auctionWriteBoard";
	
		}
	
	@RequestMapping("/auction/auctionbid") 
	public String auctionBid() {
		return "auctionBid";
	
		}
	//경매게시판 글 읽기
	@RequestMapping("/auction/auctionRead") 
	public String auctionRead(int auction_no, String status, Model model) {
		String view = "";
		AuctionBoard_DTO board = service.auctionRead(auction_no);
		System.out.println("no:"+auction_no+",status:"+status);
		model.addAttribute("board", board);
		if(status.equals("READ")) {
			view = "auctionRead";
			System.out.println(board);
		}else {
			view = "auctionUpdate";
		}
		return view;
		}
	
}