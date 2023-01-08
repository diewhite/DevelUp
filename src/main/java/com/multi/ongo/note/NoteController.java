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
	//받은쪽지함
	@RequestMapping(value = "/mypage/note/receivebox")
	public String receiveList(String id, String perpage, String page, Model model){
		if(perpage==null&&page==null) {
			perpage="5";
			page="1";
		}
		List<NoteDTO> notelist = service.receiveList(id,Integer.parseInt(perpage),Integer.parseInt(page));
		NoteDTO receiveNoteCnt = service.receiveNoteCnt(id);
		int count = Integer.parseInt(receiveNoteCnt.getCount());
		int endpage = (int)Math.ceil((double)count/Integer.parseInt(perpage));
		model.addAttribute("notelist", notelist);
		model.addAttribute("count", count);
		model.addAttribute("endpage", endpage);
		model.addAttribute("page",page);
		return "mypage/note/receivebox";
	}
	//보낸쪽지함
	@RequestMapping(value = "/mypage/note/sendbox")
	public String sendList(String id, String perpage, String page, Model model){
		if(perpage==null&&page==null) {
			perpage="5";
			page="1";
		}
		List<NoteDTO> notelist = service.sendList(id,Integer.parseInt(perpage),Integer.parseInt(page));
		NoteDTO sendNoteCnt = service.sendNoteCnt(id);
		int count = Integer.parseInt(sendNoteCnt.getCount());
		int endpage = (int)Math.ceil((double)count/Integer.parseInt(perpage));		
		model.addAttribute("notelist", notelist);
		model.addAttribute("count", count);
		model.addAttribute("endpage", endpage);
		model.addAttribute("page",page);
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
	@RequestMapping(value = "/mypage/note/ajax_readcheck")
	@ResponseBody
	public int readNote(String no) {
		service.readCheck(no);
		return 0;
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
