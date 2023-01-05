package com.multi.ongo.auction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuctionBoard_Controller {

	@RequestMapping("/auction/auctionBoard") 
	public String auctionPage() {
		return "auctionBoard";

		
	}
	
}