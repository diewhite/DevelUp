package com.multi.ongo.note;

import java.util.List;

public interface NoteDAO {
	//ID로 검색
	public List<NoteDTO> findById(String id);
	//받은쪽지함
	public List<NoteDTO> receiveList(String id);
	//보낸쪽지함
	public List<NoteDTO> sendList(String id);
	//쪽지보내기
	public int sendNote(NoteDTO note);
}
