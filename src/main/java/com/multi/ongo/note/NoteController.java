package com.multi.ongo.note;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.ongo.member.MemberDTO;

@Controller
public class NoteController {
	NoteService service;
	
	@Autowired
	public NoteController(NoteService service) {
		super();
		this.service = service;
	}
	//쪽지함에서 쪽지 리스트 요청
//	@RequestMapping(value = "/mypage/ajax_notelist", produces = "application/json;charset=utf-8")
//	@ResponseBody
//	public List<NoteDTO> ajax_list(String id) {
//		return service.findById(id); 
//	}
	//받은쪽지함
	@RequestMapping(value = "/mypage/note/receivebox")
	public String receiveList(String id, Model model){
		List<NoteDTO> notelist = service.receiveList(id);
		model.addAttribute("notelist", notelist);
		return "mypage/note/receivebox";
	}
	//보낸쪽지함
	@RequestMapping(value = "/mypage/note/sendbox")
	public String sendList(String id, Model model){
		List<NoteDTO> notelist = service.sendList(id);
		model.addAttribute("notelist", notelist);
		return "mypage/note/sendbox";
	}
	//쪽지보내기
	@RequestMapping(value = "/mypage/note/sendnote")
	public String sendNote(NoteDTO note, HttpSession session) {
		service.sendNote(note);
		MemberDTO user = (MemberDTO)session.getAttribute("user");
		return "redirect:/mypage/note/sendbox?id="+user.getMember_id();
	}
	//쪽지읽기(Ajax)
	@RequestMapping(value = "/mypage/note/ajax_readnote")
	@ResponseBody
	public NoteDTO readNote(NoteDTO note) {
		return null;
	}
	//보낸쪽지함 검색
	@RequestMapping(value = "/mypage/note/searchSendBox")
	public String searchSendBox(String category, String keyword, String send_id, Model model) {
		List<NoteDTO> notelist = service.searchSendBox(category,keyword,send_id);
		model.addAttribute("notelist", notelist);
		return "mypage/note/sendbox";
	}
	//받은쪽지함 검색
	@RequestMapping(value = "/mypage/note/searchReceiveBox")
	public String searchReceiveBox(String category, String keyword, String receive_id, Model model) {
		List<NoteDTO> notelist = service.searchReceiveBox(category,keyword,receive_id);
		model.addAttribute("notelist", notelist);
		return "mypage/note/receivebox";
	}
	//쪽지삭제
	@RequestMapping(value = "/mypage/note/deleteNote")
	public String deleteNote(String no,String page,HttpSession session) {
		String view = "";
		MemberDTO user = (MemberDTO) session.getAttribute("user");
		service.deleteNote(no);
		if(page.equals("receive")) {
			view = "redirect:/mypage/note/receivebox?id="+user.getMember_id();
		} else if (page.equals("send")) {
			view = "redirect:/mypage/note/sendbox?id="+user.getMember_id();
		}
		return view;
	}
}
