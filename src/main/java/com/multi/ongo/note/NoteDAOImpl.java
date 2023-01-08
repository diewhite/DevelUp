package com.multi.ongo.note;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class NoteDAOImpl implements NoteDAO {
	SqlSession sqlsession;
	
	@Autowired
	public NoteDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public List<NoteDTO> receiveList(String id,int perpage,int page) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("perpage",String.valueOf(perpage));
		map.put("page", String.valueOf(page));
		List<NoteDTO> notelist = sqlsession.selectList("com.multi.ongo.note.receivelist",map);
		return notelist;
	}

	@Override
	public List<NoteDTO> sendList(String id, int perpage, int page) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("perpage",String.valueOf(perpage));
		map.put("page", String.valueOf(page));
		return sqlsession.selectList("com.multi.ongo.note.sendlist",map);
	}

	@Override
	public int sendNote(NoteDTO note) {
		return sqlsession.insert("com.multi.ongo.note.sendnote",note); 
	}

	@Override
	public List<NoteDTO> searchSendBox(String category, String keyword, String send_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("keyword", keyword);
		map.put("send_id", send_id);
		return sqlsession.selectList("com.multi.ongo.note.searchsendbox", map);
	}

	@Override
	public List<NoteDTO> searchReceiveBox(String category, String keyword, String receive_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("keyword", keyword);
		map.put("receive_id", receive_id);
		return sqlsession.selectList("com.multi.ongo.note.searchreceivebox", map);
	}

	@Override
	public int deleteNote(String no) {
		return sqlsession.delete("com.multi.ongo.note.deletenote", no);
	}

	@Override
	public int readCheck(String no) {
		return sqlsession.update("com.multi.ongo.note.readcheck", no);
	}

	@Override
	public NoteDTO receiveNoteCnt(String id) {
		return sqlsession.selectOne("com.multi.ongo.note.receivenotecnt", id);
	}

	@Override
	public NoteDTO sendNoteCnt(String id) {
		return sqlsession.selectOne("com.multi.ongo.note.sendnotecnt", id);
	}

}
