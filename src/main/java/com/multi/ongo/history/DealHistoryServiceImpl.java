package com.multi.ongo.history;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.ongo.deal.DealBoard_DTO;

@Service
public class DealHistoryServiceImpl implements DealHistoryService {
	DealHistoryDAO dao;
	
	@Autowired
	public DealHistoryServiceImpl(DealHistoryDAO dao) {
		super();
		this.dao = dao;
	}
	
	//중고거래 판매내역 조회 
	@Override
	public List<DealBoard_DTO> sell_List() {
		// TODO Auto-generated method stub
		return null;
	}

}
