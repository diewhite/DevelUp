package com.multi.ongo.deal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class DealBoard_ServiceImpl implements DealBoard_Service {

	DealBoard_DAO dao;
	
	@Autowired
	public DealBoard_ServiceImpl(DealBoard_DAO dao) {
		super();
		this.dao = dao;
	}


	@Override
	public int writeProd(DealBoard_DTO dto) {
		return dao.writeProd(dto);
	}

}
