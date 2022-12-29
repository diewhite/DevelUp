package com.multi.ongo.deal;

import java.util.List;

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

	//중고거래등록
	@Override
	public int writeProd(DealBoard_DTO dto) {
		return dao.writeProd(dto);
	}

	//중고거래 전체조회
	@Override
	public List<DealBoard_DTO> boardlist() {
		return dao.boardlist();
	}

}
