package com.multi.ongo.payment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDAOImpl implements PaymentDAO {
	SqlSession sqlsession;

	@Autowired
	public PaymentDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

//	============================== 중고거래 DAO ===============================
	
	
	// 중고거래 판매내역 > 결제요청 버튼 클릭 > payment 테이블에 결제 정보 insert 
	@Override
	public int setPayInfo(PaymentDTO dto) {
		System.out.println("DAO : setPayInfo에 파라미터 넘어왔는지 test : "+dto);
		int result = sqlsession.insert("com.multi.ongo.pay.setPayInfo_deal", dto);
		return result;
	}

	// 중고거래 구매내역 > 결제하기 버튼 클릭 > 결제창 > 결제정보 list 출력
	@Override
	public List<PayTotalDTO> payInfoList_buyList (String member_id,int board_number) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", member_id);
		map.put("board_number", board_number);
		List<PayTotalDTO> list = sqlsession.selectList("com.multi.ongo.pay.buyList_payInfo_deal", map);
		System.out.println("DAO - payInfoList_buyList 결과 : "+list);
		return list;
	}
	
	// 중고거래 판매내역 > 결제상태 출력 
//	@Override
//	public List<PaymentDTO> payInfoList_sellList (String member_id) {
//		return sqlsession.selectList("com.multi.ongo.pay.seller_payInfoList_deal", member_id);
//	}

	// 구매내역 > 결제창 > 결제완료 버튼 클릭 > 결제 상태 변경 (결제대기->결제완료)
	@Override
	public int changePayState(int board_number) {
		int result = sqlsession.update("com.multi.ongo.pay.changePayState_deal", board_number);
		System.out.println("changePayState실행결과 : "+ result);
		return result;
	}
	
	//나의온고 > 결제내역 조회 페이지 
	@Override
	public List<PayTotalDTO> paymentHistory(String member_id) {
		return sqlsession.selectList("com.multi.ongo.pay.paymentHistory", member_id);
	}

	
//	============================== 경매 DAO ===============================
	
	
	@Override
	public int setPayInfo_auction(String seller_id, String buyer_id, int auction_number, int end_price) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public PaymentDTO payStateList_auction(int auction_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public 	List<PaymentDTO> payInfoList_auction(int auction_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changePayState_auction(int auction_number) {
		// TODO Auto-generated method stub
		return 0;
	}

}
