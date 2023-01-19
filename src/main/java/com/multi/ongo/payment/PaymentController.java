package com.multi.ongo.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment/paymentlist")
	public String paymentlist () {
		return "payment/paymentlist";
	}
	
	//결제 상세내역 psj추가
	@RequestMapping(value = "/payment2/PayParticulars1")
	public String pay1() {
		return "payment2/PayParticulars1";
	}
	
	//결제 상세내역 psj추가
	@RequestMapping(value = "/payment2/PayParticulars2")
	public String pay2() {
		return "payment2/PayParticulars2";
	}
	
}
