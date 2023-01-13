package com.multi.ongo.auction;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.ongo.deal.DealBoard_DTO;
@Repository
public class AuctionBoard_DAOImpl implements AuctionBoard_DAO{
// <mapper namespace="com.multi.ongo.deal">
	SqlSession sqlSession;
	
	@Autowired
	public AuctionBoard_DAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}



	//중고거래
	public int writeProd(AuctionBoard_DTO dto) {
		return sqlSession.insert("com.multi.ongo.deal.auction_write", dto);
	}


	//중고거래
	@Override
	public List<AuctionBoard_DTO> boardlist() {
		return sqlSession.selectList("com.multi.ongo.auction.selectAll");
	}


	//중고거래 게시
	@Override
	public AuctionBoard_DTO auctionRead(int deal_number) {
		return sqlSession.selectOne("com.multi.ongo.deal.auctionRead", deal_number);
	}



	@Override
	public int update(AuctionBoard_DTO dto) {
		return sqlSession.update("com.multi.ongo.auction.auctionUpdate", dto);
	}



	@Override
	public int auctionDelete(String id) {
		return sqlSession.delete("com.multi.ongo.auction.auctionDelete", id);
	}



	@Override
	public AuctionBoard_DTO dealRead(int deal_number) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public int dealDelete(String member_id) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public List<DealBoard_DTO> searchData(String tag, String searchData) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List<DealBoard_DTO> dealType_list(String dealType) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
}
