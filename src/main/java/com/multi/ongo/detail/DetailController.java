package com.multi.ongo.detail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller   
public class DetailController {
	
	//경매내역 list
	@RequestMapping("/detail/detaillist")
	public ModelAndView detaillist () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("detail/detaillist");
		return mav;
	}
	
	//경매내역 상세페이지
	
	@RequestMapping("/detail/detailDetail")
	public ModelAndView detatilDetail() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("detail/detailDetail");
			return mav;
	}
		
	//결제 상세내역
	@RequestMapping("/payment2/PayParticulars")
		public ModelAndView	PayParticulars() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("payment2/PayParticulars");
			return mav;
			
	
		
	
	}
}