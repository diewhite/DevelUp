package com.multi.ongo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.ongo.deal.DealBoard_DTO;
import com.multi.ongo.deal.DealBoard_Service;

@Controller
public class HomeController {
	DealBoard_Service service;
		@Autowired
		public HomeController(DealBoard_Service service) {
		super();
		this.service = service;
	}

		@RequestMapping("/index")
		public ModelAndView main() {
			ModelAndView mav = new ModelAndView();
			List<DealBoard_DTO> main_dealcategory = service.dealType_list("all");
			mav.addObject("main_dealcategory", main_dealcategory);
			mav.setViewName("index");
			//System.out.println("main_category체크 : " + main_dealcategory);
			return mav;
		}

		
}
