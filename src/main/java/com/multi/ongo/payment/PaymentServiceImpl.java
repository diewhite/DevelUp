package com.multi.ongo.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {
	PaymentDAO dao;
	
	@Autowired
	public PaymentServiceImpl(PaymentDAO dao) {
		super();
		this.dao = dao;
	}

	// 중고거래 판매내역 > 결제요청 버튼 클릭 > payment 테이블에 결제 정보 insert  
	@Override
	public int payRequest(PaymentDTO dto) {
		dao.setPayInfo(dto);
		return 0;
	}

	// 중고거래 구매내역 > 결제하기 버튼 클릭 > 결제창 > 결제정보 list 출력
	public List<PayTotalDTO> payInfoList_buyList(String member_id,int board_number){
		return dao.payInfoList_buyList(member_id,board_number);
	}
		
	// 중고거래 판매내역 > 결제상태 출력 
//	public List<PaymentDTO> payInfoList_sellList (String member_id){
//		return dao.payInfoList_sellList(member_id);
//	}

	// 구매내역 > 결제창 > 결제완료 버튼 클릭 > 결제 상태 변경 (결제대기->결제완료)
	@Override
	public int changePayState(int board_number) {
		return dao.changePayState(board_number);
	}

	//나의온고 > 결제내역 조회 페이지 
	@Override
	public List<PayTotalDTO> paymentHistory(String member_id) {
		return dao.paymentHistory(member_id);
	}
	
	
//	 ======================================== 경매 service ===============================
	

	@Override
	public int payRequest_auction(String seller_id, String buyer_id, int auction_number, int end_price) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PaymentDTO payStateList_auction(int auction_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PaymentDTO> payInfoList_auction(int auction_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changePayState_auction(int auction_number) {
		// TODO Auto-generated method stub
		return 0;
	}

	


	
	
}
