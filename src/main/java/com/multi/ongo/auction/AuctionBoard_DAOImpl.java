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

	@Override
	public int AuctionProd(AuctionBoard_DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public AuctionBoard_DTO auctionRead(int auction_no) {
		return sqlSession.selectOne("com.multi.ongo.auction.read", auction_no);
	}

	@Override
	public List<AuctionBoard_DTO> boardlist() {
		return sqlSession.selectList("com.multi.ongo.auction.listAll");
	}

	@Override
	public List<AuctionBoard_DTO> findByCategory(String auction_category) {
		
		return sqlSession.selectList("com.multi.ongo.auction.categorySelect", auction_category);
	}

	
	@Override
	public AuctionBoard_DTO auctionlist(int auction_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(AuctionBoard_DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	
	//경매게시판 글 삭제 -by태원 __________________________________________
	@Override
	public int auctionDelete(int auction_number) {
		return sqlSession.delete("com.multi.ongo.auction.auctionDelete", auction_number);
	}
	//________________________________________________________________

	@Override
	public int auctionStatus() {
		return sqlSession.update("com.multi.ongo.auction.auctionStatus");
	}

}	
