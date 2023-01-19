package com.multi.ongo.cooperation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CooperationController {
	CooperationService service;

	@Autowired
	public CooperationController(CooperationService service) {
		super();
		this.service = service;
	}
	
	//메인타이틀 협력업체 배너(Ajax)
	@RequestMapping(value = "/cooperation/ajax_list")	
	@ResponseBody
	public List<CooperationDTO> ajax_cooperList() {
		List<CooperationDTO> cooperList = service.cooperList();
		return cooperList;
	}
	
	//협력업체 리스트 호출
	@RequestMapping(value = "/cooperation/list")
	public String cooperList(Model model){
		List<CooperationDTO> cooperList = service.cooperList();
		int count = cooperList.size();
		model.addAttribute("cooperList", cooperList);
		model.addAttribute("count", count);
		return "cooperation/companylist";
	}
}
