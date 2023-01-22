package com.multi.ongo.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.ongo.auction.AuctionBoard_DTO;
import com.multi.ongo.deal.DealBoard_DTO;
import com.multi.ongo.history.DealRequestDTO;


@Controller   
public class DetailController {
AuctionDetailService service;

public DetailController (){}

	@Autowired
	public DetailController(AuctionDetailService service) {
	super();
	this.service = service;
}


	//경매내역 list
	@RequestMapping("/detail/detaillist")
	public ModelAndView detaillist () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("detail/detaillist");
		return mav;
	}
	//중고거래 판매내역 > 판매중 list + 카테고리별 조회 (서비스단에서 if문으로 처리) 
			@RequestMapping("/detail/auctionsellList")	
			public ModelAndView  auctionsellList(String member_id, String auction_state) {
				System.out.println(member_id + auction_state );
				ModelAndView mav = new ModelAndView("detail/auctionsellList");//타일즈에서 연결
				List<AuctionBoard_DTO> auctionlist =service.auctsell_List(member_id, auction_state);
				//System.out.println("컨트롤러테스트오케이?"+auctionlist);
				mav.addObject("auctionlist", auctionlist);
				return mav;
		}
//	//경매,일반거래 현황
//			@RequestMapping("/history/myongosecond")	// spring-config의 component-scan에 등록한 패키지 명 뒷부분 이어서 작성해야함 
//			public ModelAndView myongosecond () {
//				ModelAndView mav = new ModelAndView();
//				mav.setViewName("history/myongosecond");
//				return mav;
//			}
//	
//	//경매내역 상세페이지
//	
//	@RequestMapping("/detail/detailDetail")
//	public ModelAndView detatilDetail() {
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("detail/detailDetail");
//			return mav;
//	}
//		
	//결제 상세내역
	@RequestMapping("/payment2/PayParticulars")
		public ModelAndView	PayParticulars() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("payment2/PayParticulars");
			return mav;
	}
//	
//	@RequestMapping("/detail/auctionbuyList")
//	public ModelAndView auctionbuyList() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("detail/auctionbuyList");
//		return mav;
//}
//	============= 구매관리 페이지 ====================
	
	//구매내역 main list
	@RequestMapping("detail/auctionbuyList")
	public ModelAndView auctionbuyList(String member_id, String auction_state){
		System.out.println("auctionbuyList 데이터 넘어오는지 확인:"+member_id+ auction_state);
	ModelAndView mav = new ModelAndView("detail/auctionbuyList");
	List<AuctionBoard_DTO> auctbuylist = service.myauctList(member_id, auction_state);
	System.out.println("컨트롤러에서 db 실행 결과 test : "+auctbuylist);
	mav.addObject("auctbuylist", auctbuylist);
	return mav;	
	}
	
	//구매내역 list auctpurchaseList
	List<AuctionBoard_DTO> myauctreqlist (String member_id){
		return null;
	}
	
	List<AuctionBoard_DTO> myauctList (String member_id){
		return null;
	}
	
	List<AuctionBoard_DTO> auctpurchaseList(String member_id){
		return null;
	}
	
	
 //	@RequestMapping("/detail/auctionsellList")
//	public ModelAndView auctionsellList() {
//	ModelAndView mav = new ModelAndView();
//	mav.setViewName("detail/auctionsellList");
//	return mav;
//			}
	
}