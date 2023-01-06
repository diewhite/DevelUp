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
	
	//경매,일반거래 현황
			@RequestMapping("/history/myongosecond")	// spring-config의 component-scan에 등록한 패키지 명 뒷부분 이어서 작성해야함 
			public ModelAndView myongosecond () {
				ModelAndView mav = new ModelAndView();
				mav.setViewName("history/myongosecond");
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