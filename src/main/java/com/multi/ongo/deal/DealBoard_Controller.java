package com.multi.ongo.deal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DealBoard_Controller {

	DealBoard_Service service;
	
	@Autowired
	public DealBoard_Controller(DealBoard_Service service) {
		super();
		this.service = service;
	}

	@RequestMapping("dealmain") //테스트
	public String dealPage() {
		return "deal_Register";
		
	}
	
	//게시글등록 config-view처리
	
	
	@RequestMapping("deal_Write")
	public String dealWrite(DealBoard_DTO dto) {
		System.out.println("id : " + dto.getId());
		System.out.println("dealType : " + dto.getDealType());
		System.out.println("pro_category : " + dto.getProduct_category());
		System.out.println("pro_state : " + dto.getProduct_state());
		System.out.println("pro_price : " + dto.getProduct_price());
		System.out.println("board_title : " + dto.getBoard_title());
		System.out.println("pro_name : " + dto.getProduct_name());
		System.out.println("board_content : " + dto.getBoard_content());
		System.out.println("hits : " + dto.getHits());
		System.out.println("writeDate : " + dto.getWrite_date());
		System.out.println("deal_no : " + dto.getDeal_number());
		service.writeProd(dto);
		return "/index.do";
		
	}
	
	
	//게시글 리스트
//	public ModelAndView listall() {
//		ModelAndView mav = new ModelAndView();
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}



