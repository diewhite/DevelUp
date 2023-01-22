package com.multi.ongo.history;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.multi.ongo.member.MemberDTO;
import com.multi.ongo.payment.PaymentDTO;
import com.multi.ongo.payment.PaymentService;

@Controller
public class DealHistoryController {
	DealHistoryService service;
	PaymentService payservice;

	@Autowired
	public DealHistoryController(DealHistoryService service, PaymentService payservice) {
		super();
		this.service = service;
		this.payservice = payservice;
	}


	public DealHistoryController() {}

		//나의온고 click 시 보이는 화면
		@RequestMapping("/history/myongo")	// spring-config의 component-scan에 등록한 패키지 명 뒷부분 이어서 작성해야함 
		public ModelAndView myongopage () {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("history/myongo");
			return mav;
		}
	

		
		
		//중고거래 판매내역 > 전체 list + 카테고리별 조회 (서비스단에서 if문으로 처리) 
		@RequestMapping("/history/dealsellList")	
		public ModelAndView dealsellList (String member_id, String product_state) {
			ModelAndView mav = new ModelAndView("history/dealsellList");
			List<DealBoard_DTO> sellList = service.sell_List(member_id, product_state);
			mav.addObject("sellList", sellList);			
//			//결제상태 출력 
//			List<PaymentDTO> payInfoList = payservice.payInfoList_buyList(member_id);
//			mav.addObject("payInfoList", payInfoList);
			return mav;
			}
		

		//중고거래게시판 '거래요청'버튼 클릭 시 > 거래요청한 유저 데이터 insert 		
		@RequestMapping("/history/dealreq")
		public String dealreq (DealRequestDTO dto) {
			int result = service.dealreq(dto);
			return "history/dealRequestChk";	//구매관리페이지로 넘어가게 처리 
		}

		//중고거래 판매관리 > 판매중 list > 거래요청 유저 정보 list 
		@RequestMapping(value = "/history/dealReqinfo", produces ="application/json;charset=utf-8")
		@ResponseBody
		public 	List<DealRequestDTO> dealreqinfo(int deal_number) {
			List<DealRequestDTO> reqinfo = service.dealreqinfo(deal_number);
			
			return reqinfo;
		}
		

		//중고거래 판매내역 > 판매중 list > '거래하기' 클릭 시 update dealreq 테이블 buy_id  
												//	update deal_table2 테이블 product_state 
		@RequestMapping("/history/choicebuyer")							
		public String dealBtn (String req_id, int deal_number, int dealreq_no, String member_id, HttpSession session) {
			System.out.println("구매하기 버튼 클릭시 넘어오는 파라미터 : "+req_id+","+dealreq_no+","+deal_number+","+member_id);
			int result = service.dealBtn(req_id, deal_number, dealreq_no, member_id);
			System.out.println("dealBtn 결과 = "+result);
			MemberDTO user = (MemberDTO)session.getAttribute("user");
			return "redirect:/history/dealsellList?member_id="+user.getMember_id()+"&product_state=all";
		}
		
		//중고거래 판매내역 > 거래진행중list > 거래취소 버튼 클랙시 
		@RequestMapping("/history/dealcancle")							
		public String payRequest (int deal_number,  HttpSession session) {
			MemberDTO user = (MemberDTO)session.getAttribute("user");
			//deal_table2 update product_state='판매중' where deal_number=#{}
			//dealreq update buyer_id=null where deal_number=#{}
			service.dealcancle(deal_number);
			return "redirect:/history/dealsellList?member_id="+user.getMember_id()+"&product_state=all";
		}
		
		
//		============= 구매관리 페이지 ====================
		
		
		//중고거래 구매관리 > main list 
		@RequestMapping("/history/dealbuyList")
		public ModelAndView dealbuyList (String member_id, String product_state) {
			ModelAndView mav = new ModelAndView("history/dealbuyList");
			List<DealBoard_DTO> buylist = service.mydealList(member_id, product_state);
			mav.addObject("buylist", buylist);
			return mav;
		}
		
		// 중고거래 구매관리 > 구매 확정 버튼 클릭 > 거래상태 변경 (거래진행중->판매완료) => dealhistorycontroller에서 처리하기 
		@RequestMapping("/history/dealconfirm")
		public String dealConfirm (int deal_number, HttpSession session) {
			MemberDTO user = (MemberDTO)session.getAttribute("user");
			System.out.println("deal_number넘어왔나 test :" + deal_number);
			service.dealconfirm(deal_number);
			return "redirect:/history/dealbuyList?member_id="+user.getMember_id()+"&product_state=all";
		}
		
		
		
		
	}
