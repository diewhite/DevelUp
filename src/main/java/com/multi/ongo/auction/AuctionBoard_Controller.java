package com.multi.ongo.auction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuctionBoard_Controller {
	AuctionBoard_Service service;
	
	@Autowired
	public AuctionBoard_Controller(AuctionBoard_Service service) {
		super();
		this.service = service;
	}

	@RequestMapping("/auction/auctionBoard") 
	public String auctionPage() {
		return "auctionBoard";

		
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
		System.out.println("start:"+board.getWrite_date());
		System.out.println("end:"+board.getEnd_date());
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