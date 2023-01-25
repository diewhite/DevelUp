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
	//경매거래 판매내역 > 판매중 list > 거래요청 유저 정보 list 
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
	//중고거래게시글 거래요청 > 거래요청한 유저 데이터 insert 
//	@Override
//	public int auctdealreq(AuctionRequestDTO dto) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
	
	
//	************* 판매 관리 *****************
// 경매 구매내역 전체 list  
	@Override
	public List<AuctionBoard_DTO> auctpurchaseAll(String member_id) {
		return sqlsession.selectList("com.multi.ongo.detail.auctpurchaseAll" ,member_id);
	}
	//구매내역(=입찰중) 
	@Override
	public List<AuctionBoard_DTO> myauctreqlist(String member_id, String auction_state){
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put(auction_state, auction_state);
		return sqlsession.selectList("com.multi.ongo.detail.myauctreqlis", map);
	}
	//중고거래게시글 거래요청 > 거래요청한 유저 데이터 insert
	@Override
	public int auctdealreq(AuctionRequestDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}
	//구매완료(=판매완료) list
	@Override
	public List<AuctionBoard_DTO> auctpurchaseList(String member_id, String auction_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put(member_id, member_id);
		map.put(auction_state, auction_state);
		return sqlsession.selectList("com.multi.ongo.detail.auctpurchaseList", map);
	}
}