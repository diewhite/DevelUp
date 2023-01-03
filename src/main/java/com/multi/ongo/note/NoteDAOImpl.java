package com.multi.ongo.note;

import java.util.List;

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
	public List<NoteDTO> findById(String id) {
		return sqlsession.selectList("com.multi.ongo.note.findbyid", id); 
	}

	@Override
	public List<NoteDTO> receiveList(String id) {
		List<NoteDTO> notelist = sqlsession.selectList("com.multi.ongo.note.receivelist",id);
		System.out.println(notelist);
		return notelist;
	}

	@Override
	public List<NoteDTO> sendList(String id) {
		return sqlsession.selectList("com.multi.ongo.note.sendlist",id);
	}

	@Override
	public int sendNote(NoteDTO note) {
		return sqlsession.insert("com.multi.ongo.note.sendnote",note); 
	}
}
