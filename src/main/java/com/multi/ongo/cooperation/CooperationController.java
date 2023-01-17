package com.multi.ongo.cooperation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
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
}
