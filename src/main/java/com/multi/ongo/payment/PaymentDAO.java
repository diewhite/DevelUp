package com.multi.ongo.payment;

import java.util.List;

public interface PaymentDAO {

//	=============================== 중고거래 ===================================
	
	// 중고거래 판매내역 > 결제요청 버튼 클릭 > payment 테이블에 결제 정보 insert 
	int setPayInfo (PaymentDTO dto);

	// 중고거래 구매내역 > 결제하기 버튼 클릭 > 결제창 > 결제정보 list 출력
	List<PayTotalDTO> payInfoList_buyList (String member_id,int board_number);
	
	// 중고거래 판매내역 > 결제상태 출력 
//	List<PaymentDTO> payInfoList_sellList (String member_id);
	
	// 구매내역 > 결제창 > 결제완료 버튼 클릭 > 결제 상태 변경 (결제대기->결제완료)
	int changePayState (int board_number);
		
	//나의온고 > 결제내역 조회 페이지 
	List<PayTotalDTO> paymentHistory (String member_id);
	
//	=============================== 경매 ===================================	
	
	// 중고거래 판매내역 > 결제요청 버튼 클릭 > payment 테이블에 결제 정보 insert 
	int setPayInfo_auction (String seller_id, String buyer_id, int auction_number, int end_price);
		
	// 중고거래 판매내역, 구매내역 > 결제상태 출력
	PaymentDTO payStateList_auction (int auction_number);
		
	// 구매내역 > 결제하기 버튼 클릭 > 결제창 > 결제정보 list 출력
	List<PaymentDTO> payInfoList_auction (int auction_number );
		
	// 구매내역 > 결제창 > 결제완료 버튼 클릭 > 결제 상태 변경 (결제대기->결제완료)
	int changePayState_auction (int auction_number);	
	
}
