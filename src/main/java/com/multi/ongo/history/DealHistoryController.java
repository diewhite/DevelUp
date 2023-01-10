package com.multi.ongo.history;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.ongo.deal.DealBoard_DTO;
import com.multi.ongo.deal.DealBoard_Service;

@Controller
public class DealHistoryController {
	DealHistoryService service;
	

	@Autowired
	public DealHistoryController(DealHistoryService service) {
		super();
		this.service = service;
	}


	// 나의온고 click 시 보이는 화면
		@RequestMapping("/history/myongo")	// spring-config의 component-scan에 등록한 패키지 명 뒷부분 이어서 작성해야함 
		public ModelAndView myongopage () {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("history/myongo");
			return mav;
		}
		
	
	
	
	//중고내역 상세페이지 
	@RequestMapping("/history/joongodetail")
	public ModelAndView joongodetail () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("history/joonggo_detail");
		return mav;
	}
	

	
	//중고거래 판매관리 
		@RequestMapping("/history/dealsellList")
		public ModelAndView dealsellList (String member_id) {
			ModelAndView mav = new ModelAndView("history/dealsellList");
			List<DealBoard_DTO> sellList = service.sell_List();
			System.out.println("판매거래내역=>"+sellList);
			mav.addObject("sellList", sellList);
			return mav;
		}
		
	//중고거래 판매관리 > 거래요청 
		@RequestMapping(value = "/history/dealReq", produces ="application/json;charset=utf-8")
		public List<DealRequestDTO> dealreqinfo(int deal_number) {
			System.out.println("ajax로 넘어온 deal_number"+deal_number);
			List<DealRequestDTO> reqinfo = service.dealreqinfo(deal_number);
			System.out.println("list 찍어보기"+reqinfo);
			return service.dealreqinfo(deal_number);
		}
	
}
