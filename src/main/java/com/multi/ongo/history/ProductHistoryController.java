package com.multi.ongo.history;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductHistoryController {

	@RequestMapping("/history/test")	// spring-config의 component-scan에 등록한 패키지 명 뒷부분 이어서 작성해야함 
	public ModelAndView historylist () {
		System.out.println("controller");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("history/historylist");
		return mav;
	}
}
