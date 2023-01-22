package com.multi.ongo.payment;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.ongo.member.MemberDTO;

@Controller
public class PaymentController {
	PaymentService service;
	
	public PaymentController() {}
	
	@Autowired
	public PaymentController(PaymentService service) {
		super();
		this.service = service;
	}


	//중고거래 판매내역 > 결제요청 버튼 클릭 시 > payment 테이블에 결제 정보 insert & payment 테이블 결제상태 '결제대기'로 변경  
	@RequestMapping("/payment/payRequest")
	public String payRequest (String seller_id,String buyer_id,int board_number,int product_price, HttpSession session ) {
		PaymentDTO dto = new PaymentDTO(seller_id, buyer_id, board_number, product_price);
		MemberDTO user = (MemberDTO)session.getAttribute("user");
		service.payRequest(dto);
		String  view ="redirect:/history/dealsellList?member_id="+user.getMember_id()+"&product_state=all";
		return view;
	}
	
	
	//dealsellList 와 dealbuyList 에 결제상태 출력하기 
	@RequestMapping("/payment/payInfoList")
	public String payInfoList (String member_id,int board_number, Model model) {
		System.out.println("결제하기 클릭 시 넘어오는 파라미터 :"+board_number+member_id);
		List<PayTotalDTO> payInfoList = service.payInfoList_buyList(member_id,board_number);
		model.addAttribute("payInfoList", payInfoList);
		return "payment2/PayParticulars1";
	}
	
	//결제창 > 결제 버튼 클릭 > 결제완료 처리 
	@RequestMapping("/payment/PayComplete")
	public String paycomplete(int board_number) {
		System.out.println("결제완료 클릭시 board_number 넘어왔는지 test :"+board_number);
		service.changePayState(board_number);
		return "payment2/PayParticulars2";
	}
	
	//나의온고 > 결제내역 조회 페이지 
	@RequestMapping("/payment/paymentlist")
	public String paymentHistory (String member_id, Model model) {
		System.out.println("top에서 파라미터 넘어왔나 test :"+member_id);
		List<PayTotalDTO> payhisory = service.paymentHistory(member_id);
		System.out.println("실행결과 : "+payhisory);
		model.addAttribute("payhisory",payhisory);
		return "payment/paymentlist";
		}
	
	
//	=================================== 경매 결제 ===============================================
	
	
}
