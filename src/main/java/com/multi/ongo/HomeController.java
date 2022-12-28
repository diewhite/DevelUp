package com.multi.ongo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
		@RequestMapping("/index22")
		public ModelAndView main() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/member/login");
			return mav;
		}

		
}
