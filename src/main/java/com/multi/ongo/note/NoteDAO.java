package com.multi.ongo.note;

import java.util.List;

public interface NoteDAO {
	//받은쪽지함
	public List<NoteDTO> receiveList(String id, int perpage, int page);
	//보낸쪽지함
	public List<NoteDTO> sendList(String id, int perpage, int page);
	//쪽지보내기
	public int sendNote(NoteDTO note);
	//읽음처리
	public int readCheck(String no);
	//보낸쪽지함 검색
	public List<NoteDTO> searchSendBox(String category, String keyword, String send_id);
	//받은쪽지함 검색
	public List<NoteDTO> searchReceiveBox(String category, String keyword, String receive_id);
	//쪽지 삭제
	public int deleteNote(String no);
	//받은쪽지함 총 수량
	public NoteDTO receiveNoteCnt(String id);
	//보낸쪽지함 총 수량
	public NoteDTO sendNoteCnt(String id);
}
