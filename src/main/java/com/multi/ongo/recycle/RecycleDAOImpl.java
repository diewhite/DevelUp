package com.multi.ongo.recycle;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecycleDAOImpl implements RecycleDAO {
	SqlSession sqlsession;

	@Autowired
	public RecycleDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public int write(RecycleDTO dto) {
		return sqlsession.insert("com.multi.ongo.recycle.write", dto);
	}

	@Override
	public List<RecycleDTO> list(String receive_id) {
		return sqlsession.selectList("com.multi.ongo.recycle.list", receive_id);
	}

	@Override
	public RecycleDTO read(String no) {
		return sqlsession.selectOne("com.multi.ongo.recycle.read", no);
	}
}
