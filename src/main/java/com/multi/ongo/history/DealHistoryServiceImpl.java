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
	public List<DealHistoryDTO> sell_List2(String member_id) {
		return dao.sell_List2(member_id);
	}
	
	//중고거래 판매내역 조회 (test용)
	@Override
	public List<DealBoard_DTO> sell_List() {
		// TODO Auto-generated method stub
		return dao.sell_List();
	}
	
	
	
}
