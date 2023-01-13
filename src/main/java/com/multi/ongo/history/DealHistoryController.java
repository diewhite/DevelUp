package com.multi.ongo.history;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.multi.ongo.deal.DealBoard_DTO;
import com.multi.ongo.deal.DealBoard_Service;

@Controller
public class DealHistoryController {
	DealHistoryService service;
	
	public DealHistoryController() {}

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
		
	
	
		//중고거래 판매내역 > 판매중 list 
		@RequestMapping("/history/dealsellList")	
		public ModelAndView dealsellList (String member_id, String product_state) {
			System.out.println("데이터 넘어오는지 확인:"+member_id+product_state);
			ModelAndView mav = new ModelAndView("history/dealsellList");
			List<DealBoard_DTO> sellList = service.sell_List(member_id, product_state);
			System.out.println("판매내역 list 테스트 : "+sellList);
			
			mav.addObject("sellList", sellList);
			return mav;
			}

		//중고거래게시판 거래요청 > 거래요청한 유저 데이터 insert 		
		@RequestMapping("/history/dealreq")
		public int dealreq (DealRequestDTO dto) {
			System.out.println("거래요청 시 dto 넘어왔는지 test:" +dto );
			int result = service.dealreq(dto);
			System.out.println("거래요청 insert 결과 : "+result);
			return result;	//구매관리페이지로 넘어가게 처리 
		}

		
		//중고거래 판매관리 > 판매중 list > 거래요청 유저 정보 list 
		@RequestMapping(value = "/history/dealReq", produces ="application/json;charset=utf-8")
		@ResponseBody
		public ModelAndView dealreqinfo(int deal_number) {
			System.out.println("ajax로 넘어온 deal_number : "+deal_number);
			ModelAndView mav = new ModelAndView();
			List<DealRequestDTO> reqinfo = service.dealreqinfo(deal_number);
			System.out.println("거래요청한 유저 정보 : "+reqinfo);
			mav.addObject("reqinfo", reqinfo);
			System.out.println("************컨트롤러의 dealreqinfo*********"+mav);
			mav.setViewName("history/dealbuyList");
			return null;
		}
		
		//중고거래 판매내역 > 판매중 list > '거래하기' 클릭 시 구매자 정보 update & 거래상태 변경
		
		
		
		
//		============= 구매관리 페이지 ====================
		
		
		//중고거래 구매관리 > main list 
		@RequestMapping("/history/dealbuyList")
		public ModelAndView dealbuyList () {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("history/dealbuyList");
			return mav;
		}
		
	}
