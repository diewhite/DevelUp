package com.multi.ongo.history;

import java.util.ArrayList;
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

	//중고거래 판매내역 > 판매중 list 
	@Override
	public List<DealBoard_DTO> sell_List(String member_id, String product_state) {
		// TODO Auto-generated method stub
		return dao.sell_List(member_id, product_state);
	}
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	@Override
	public List<DealRequestDTO> dealreqinfo(int deal_number) {
		// TODO Auto-generated method stub
		return dao.dealreqinfo(deal_number);
	}

	

	
	
}
