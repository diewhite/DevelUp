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
	public List<NoteDTO> findById(String id) {
		return dao.findById(id);
	}

	@Override
	public List<NoteDTO> receiveList(String id) {
		return dao.receiveList(id);
	}

	@Override
	public List<NoteDTO> sendList(String id) {
		return dao.sendList(id);
	}

	@Override
	public int sendNote(NoteDTO note) {
		return dao.sendNote(note);
	}
}
