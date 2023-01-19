package com.multi.ongo.recycle;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RecycleController {
	RecycleService service;
	
	@Autowired
	public RecycleController(RecycleService service) {
		super();
		this.service = service;
	}
	//글작성페이지
	@RequestMapping(value = "/recycle/writepage")
	public String writepage(String receive_id, Model model){
		model.addAttribute("receive_id", receive_id);
		return "recycle/writepage";
	}
	
	//작성한 글 DB등록
	@RequestMapping(value = "/recycle/write.do", method = RequestMethod.POST)
	public String write(RecycleDTO dto) {
		service.write(dto);
		return "redirect:/index.do";
	}
	
	@RequestMapping(value = "/recycle/list")
	public String list(String receive_id, Model model) {
		List<RecycleDTO> recyclelist = service.list(receive_id);
		model.addAttribute("recyclelist", recyclelist);
		return "recycle/boardlist";
	}
	@RequestMapping(value = "/recycle/read")
	public String read(String no, Model model) {
		RecycleDTO recycle = service.read(no);
		model.addAttribute("recycle", recycle);
		return "recycle/read";
	}
}
