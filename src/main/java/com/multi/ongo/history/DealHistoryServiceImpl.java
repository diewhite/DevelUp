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

//	************* 구매 관리 *****************
	
	
	//중고거래 판매내역list 조회 
	@Override
	public List<DealBoard_DTO> sell_List(String member_id, String product_state) {
		//if문
		List<DealBoard_DTO> list = null;
		if(product_state!=null) {
			if(product_state.equals("all")) {
				list = dao.sell_List(member_id);
			}else {
				list = dao.sellList_state(member_id, product_state);
			}
		}
		return list;
	}
	
	//중고거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
	@Override
	public int dealreq(DealRequestDTO dto) {
		return dao.dealreq(dto);
	}
	
	//중고거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
	@Override
	public List<DealRequestDTO> dealreqinfo(int deal_number) {
		List<DealRequestDTO> list = dao.dealreqinfo(deal_number);
//		System.out.println("DAO에서 서비스로 넘어온 값 : "+list);
		return list;
	}

	// 중고거래판매내역 > '거래하기'클릭 시 > 구매자 정보 update & 거래상태 변경 
	@Override
	public int dealBtn (DealRequestDTO dto, int deal_number) {
		System.out.println("컨트롤러에서 받아온 값 : "+dto+","+deal_number);
		dao.stateChange(deal_number);
		dao.choosebuyer(dto);
		return 0;
	}

	
//	************* 구매 관리 *****************
	
	//중고거래 구매내역 list > mysealList 로 대체 
	@Override
	public List<DealRequestDTO> myreqlist(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//중고거래 구매내역list 조회 > 전체 list & 구매요청 list  & 거래진행중/구매완료 list 
		//원래 용도 : 거래진행중 list 
	@Override
	public List<DealBoard_DTO> mydealList(String member_id, String product_state) {
		List<DealBoard_DTO> list = null;
		if(product_state!=null) {
			if(product_state.equals("all")) {
				//모든 구매내역 list 
				dao.purchaseAll(member_id);
			}if(product_state.equals("판매중")) {
				// 거래요청 list 
				dao.myreqlist(member_id);
			}if(product_state.equals("거래진행중")) {
				
			}
			
		}
		return null;
	}

	//구매완료(=판매완료) list > mysealList 로 대체 
	@Override
	public List<DealRequestDTO> purchaseList(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}

	//구매확정 
	@Override
	public int dealconfirm(int deal_number) {
		// TODO Auto-generated method stub
		return 0;
	}


	
	
	

	
	
}
