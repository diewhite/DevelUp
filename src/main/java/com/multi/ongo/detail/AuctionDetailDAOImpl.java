package com.multi.ongo.detail;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.ongo.auction.AuctionBoard_DTO;

	@Repository
public class AuctionDetailDAOImpl implements AuctionDetail_DAO {
	SqlSession sqlsession;
	
	@Autowired
	public AuctionDetailDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}
//	************* 판매 관리 *****************
	//경매거래 판매내역 > 메인 (판매중 list)
	@Override
	public List<AuctionBoard_DTO> auctsell_List(String member_id) {
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("member_id", member_id);
		List<AuctionBoard_DTO> list = sqlsession.selectList("com.multi.ongo.auction.auctsaleAll",member_id);
		System.out.println("멤버아이디"+ list);
		return list;
	}
	//경매거래 판매내역 > 판매중/거래진행중/판매종료 list
	@Override
	public List<AuctionBoard_DTO> auctsell_state(String member_id, String auction_state) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("auction_state", auction_state);
		List<AuctionBoard_DTO> list = sqlsession.selectList("com.multi.ongo.auction.auctselectState", map);
		System.out.println("=============list ==========="+list);
		return list;
		}
	//경매거래 판매내역 > 메인 (판매중 list)
	//@Override
//	public List<AuctionBoard_DTO> auctsell_List(String member_id) {
//	// TODO Auto-generated method stub
//		Map<String,String> map = new HashMap<String, String>();
//		map.put("member_id", member_id);
//		List<AuctionBoard_DTO> list = sqlsession.selectList("com.multi.ongo.auction.listAll", member_id);
//		return list;
//}
//	//경매거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
//@Override
//public int auctdealreq(AuctionRequestDTO dto) {
//	return sqlsession.insert("com.multi.ongo.dealreq.auctdealreq", dto);
//}
//
@Override
public List<AuctionRequestDTO> auctreqinfo(int auction_number) {
	// TODO Auto-generated method stub
//	System.out.println("dao.dealreqinfo()에 deal_number넘어왔나 체크"+deal_number);
	List<AuctionRequestDTO> sqlresult = sqlsession.selectList("com.multi.ongo.dealreq.auctreqinfo", auction_number);
//	System.out.println("매퍼 실행 결과 :"+sqlresult);
	return sqlresult;
}

	@Override
	public int choosebuyer(AuctionRequestDTO auctreqDTO) {
		// TODO Auto-generated method stub
	return 0;
	}
	@Override
	public int auctdealreq(AuctionRequestDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}
// 경매 구매내역 전체 list
	@Override
	public List<AuctionBoard_DTO> myauctionList(String member_id, String auction_state){
		return sqlsession.selectList("com.multi.ongo.detail.myauctionList", member_id);
	}
//@Override
//public int stateChange(int auction_number) {
//	// TODO Auto-generated method stub
//	return 0;
//}
//@Override
//public List<AuctionDetail_DTO> sellList_state(String member_id, String auction_state) {
//	// TODO Auto-generated method stub
//	return null;
//}
//@Override
//public List<AuctionBoard_DTO> purchaseAll(String member_id) {
//	// TODO Auto-generated method stub
//	return null;
//}
//@Override
//public List<DealBoard_DTO> myreqlist(String member_id) {
//	// TODO Auto-generated method stub
//	return null;
//}
//@Override
//public List<DealBoard_DTO> myauctList(String member_id, String auction_state) {
//	// TODO Auto-generated method stub
//	return null;
//}
//@Override
//public List<DealBoard_DTO> purchaseList(String member_id) {
//	// TODO Auto-generated method stub
//	return null;
//}
//@Override
//public int auctconfirm(int deal_number) {
//	// TODO Auto-generated method stub
//	return 0;
//}
//
//@Override
//public int chooseadder(AuctionRequestDTO auctreqDTO) {
//	// TODO Auto-generated method stub
//	return 0;
//}
//
//@Override
//public int astateChange(int auction_number) {
//	// TODO Auto-generated method stub
//	return 0;
//}
//
//@Override
//public List<AuctionBoard_DTO> apurchaseAll(String member_id) {
//	// TODO Auto-generated method stub
//	return null;
//}
//
//@Override
//public List<AuctionBoard_DTO> amyreqlist(String member_id) {
//	// TODO Auto-generated method stub
//	return null;
//}
//
//@Override
//public List<AuctionBoard_DTO> amyauctList(String member_id, String auction_state) {
//	// TODO Auto-generated method stub
//	return null;
//}
//
//@Override
//public List<AuctionBoard_DTO> apurchaseList(String member_id) {
//	// TODO Auto-generated method stub
//	return null;
//}
	@Override
	public List<AuctionBoard_DTO> auctpurchaseAll(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}
}