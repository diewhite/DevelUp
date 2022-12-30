package com.multi.ongo.history;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductHistoryController {

	
	// 중고거래내역 list 
	@RequestMapping("/history/historylist")	// spring-config의 component-scan에 등록한 패키지 명 뒷부분 이어서 작성해야함 
	public ModelAndView historylist () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("history/historylist");
		return mav;
	}
	
	
	
}
