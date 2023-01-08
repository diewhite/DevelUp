package com.multi.ongo.note;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class NoteServiceImpl implements NoteService {
	NoteDAO dao;
	@Autowired
	public NoteServiceImpl(NoteDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<NoteDTO> receiveList(String id, int perpage, int page) {
		return dao.receiveList(id,perpage,page);
	}

	@Override
	public List<NoteDTO> sendList(String id, int perpage, int page) {
		return dao.sendList(id,perpage,page);
	}

	@Override
	public int sendNote(NoteDTO note) {
		return dao.sendNote(note);
	}

	@Override
	public List<NoteDTO> searchSendBox(String category, String keyword, String send_id) {
		return dao.searchSendBox(category, keyword, send_id);
	}

	@Override
	public List<NoteDTO> searchReceiveBox(String category, String keyword, String receive_id) {
		return dao.searchReceiveBox(category, keyword, receive_id);
	}

	@Override
	public int deleteNote(String no) {
		return dao.deleteNote(no);
	}

	@Override
	public int readCheck(String no) {
		return dao.readCheck(no);
	}

	@Override
	public NoteDTO receiveNoteCnt(String id) {
		return dao.receiveNoteCnt(id);
	}

	@Override
	public NoteDTO sendNoteCnt(String id) {
		return dao.sendNoteCnt(id);
	}
}
