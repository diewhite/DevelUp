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
<<<<<<< HEAD
	}

	@RequestMapping("/auctionWrite.do") // get vs post
	public String auctionWrite(AuctionBoard_DTO dto) {

		/**
		 * 컨트롤러 어떤 요청을 받아서 무엇을 해야할지 결정하는 역할. 쓰는을 하려면 유저 데이터를 받아옴 (다음 뷰 , 또는 디비에 반영될 데이
		 * 받아온 데이터를 DB에 넣음 (디비에 접근, 데이터 조작) 다 완료되면 다른 페이지로 이동함
		 */
		System.out.println("테스트 : "+dto);
		service.writeProd(dto);
		return "redirect:/auction_listAll.do?auction_state=all";
	}
	
	
	//경매 거래게시글 전체 리스트
	@RequestMapping("/auction_listAll.do")
	public ModelAndView listall() {
		ModelAndView mav = new ModelAndView("auctionBoard");
		List<AuctionBoard_DTO> boardlist = service.boardlist();
		mav.addObject("boardlist", boardlist);
		return mav;
	}
=======
>>>>>>> refs/heads/sungmin3
	
		}
	@RequestMapping("/auction/auction") 
	public String auctionWriteBoard() {
		return "auctionWriteBoard";
	
		}
	
	@RequestMapping("/auction/auctionbid") 
	public String auctionBid() {
		return "auctionBid";
	
		}
<<<<<<< HEAD
    
//	//경매게시판 글 읽기
//	@RequestMapping("/auction/auctionRead") 
//	public String auctionRead(int auction_no, Model model) {
//		AuctionBoard_DTO board = service.auctionRead(auction_no);		
//		model.addAttribute("board", board);			
//	}

	// 경매게시판 글 읽기
	@RequestMapping("/auction/auctionRead")
	public String auctionRead(int auction_no, Model model) {
		AuctionBoard_DTO board = service.auctionRead(auction_no);
		List<AuctionBoard_DTO> bidList = service.bidList(auction_no);
		if(bidList.size()==0) {
			model.addAttribute("currPrice", 0);
		}else {
			model.addAttribute("currPrice", bidList.get(0).getAdd_price());
		}
		model.addAttribute("bidList", bidList);
		model.addAttribute("board", board);
=======
	@RequestMapping("/auction/auctionRead") 
	public String auctionRead() {
>>>>>>> refs/heads/sungmin3
		return "auctionRead";
	
		}
	
<<<<<<< HEAD
	
	//경매게시판 글 삭제 -by태원 __________________________________________
	@RequestMapping("/auction/auctionDelete")
	public String auctionDelete(int auction_number) {
		System.out.println("auction_number체크 : " + auction_number);
		service.auctionDelete(auction_number);
		return "redirect:/auction/auctionBoard?auction_category=all";
	}
	//________________________________________________________________
	
	//경매게시판 입찰하기
	@RequestMapping("/auction/bidding")
	public String bidding(AuctionBoard_DTO dto) {
		service.bidding(dto);
		service.updatePrice(dto);
		int auction_num = dto.getAuction_number();
		return "redirect:/auction/auctionRead?auction_no="+auction_num;
	}
=======
>>>>>>> refs/heads/sungmin3
}