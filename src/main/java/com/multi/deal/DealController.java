package com.multi.deal;

import org.springframework.web.bind.annotation.RequestMapping;

public class DealController {

	@RequestMapping("dealmain")
	public String dealPage() {
		return "login";
	}
}
