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

	
	//중고거래 판매내역 조회 (test용)
	@Override
	public List<DealBoard_DTO> sell_List() {
		// TODO Auto-generated method stub
		return dao.sell_List();
	}

	//중고거래 판매내역 조회 > 거래요청 유저 정보 
	@Override
	public List<DealRequestDTO> dealreqinfo(int deal_number) {
		return dao.dealreqinfo(deal_number);
	}
	
	
}
