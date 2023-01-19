package com.multi.ongo.auction;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AuctionBoard_DAOImpl implements AuctionBoard_DAO {
// <mapper namespace="com.multi.ongo.deal">
	SqlSession sqlSession;

	@Override
	public int insertFile(AuctionBoardUpFile_DTO boardfile) {
		// TODO Auto-generated method stub
		return sqlSession.insert("com.multi.ongo.auction.fileinsert", boardfile);
	}
	
//	@Override 여러장때활용
//	public AuctionBoardUpFile_DTO getFileList(String boardno) {
//		return sqlSession.selectOne("com.multi.ongo.auction.fileselect", boardno);
//	}
	
	@Override
	public  AuctionBoardUpFile_DTO getFile(String boardno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.multi.ongo.auction.getfileinfo", boardno);
	} 
	//여기까지가 업로드관련

	
	
	
	
	
	// 글등록
	public int writeProd(AuctionBoard_DTO dto) {
		System.out.println("등록 daoImpl : " + dto);
		return sqlSession.insert("com.multi.ongo.auction.auction_write", dto);
	}

	@Autowired
	public AuctionBoard_DAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public AuctionBoard_DTO auctionRead(int auction_number) {
		return sqlSession.selectOne("com.multi.ongo.auction.read", auction_number);
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

	@Override
	public List<AuctionBoard_DTO> bidList(int auction_number) {
		return sqlSession.selectList("com.multi.ongo.auction.bidList", auction_number);
	}

	@Override
	public int bidding(AuctionBoard_DTO dto) {
		return sqlSession.insert("com.multi.ongo.auction.bidding", dto);
	}

	@Override
	public int updatePrice(AuctionBoard_DTO dto) {
		return sqlSession.update("com.multi.ongo.auction.updatePrice", dto);
	}

	@Override
	public AuctionBoardUpFile_DTO getFileList(String boardno) {
		// TODO Auto-generated method stub
		return null;
	}

}	
