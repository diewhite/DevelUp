package com.multi.ongo.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment/paymentlist")
	public String paymentlist () {
		return "payment/paymentlist";
	}
}
