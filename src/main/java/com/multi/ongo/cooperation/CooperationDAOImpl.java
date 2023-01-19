package com.multi.ongo.cooperation;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CooperationDAOImpl implements CooperationDAO {
	SqlSession sqlsession;

	@Autowired
	public CooperationDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public List<CooperationDTO> cooperList() {
		return sqlsession.selectList("com.multi.ongo.cooperation.list");
	}
	
	
}
