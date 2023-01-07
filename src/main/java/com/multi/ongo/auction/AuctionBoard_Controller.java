package com.multi.ongo.auction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuctionBoard_Controller {

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
	
}