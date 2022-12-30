package com.multi.ongo.note;

import java.util.List;

public interface NoteService {
	public List<NoteDTO> findById(String id);
	//받은쪽지함
	public List<NoteDTO> receiveList(String id);
	//보낸쪽지함
	public List<NoteDTO> sendList(String id);
}
