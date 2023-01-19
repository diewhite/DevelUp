package com.multi.ongo.deal;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class DealBoard_DAOImpl implements DealBoard_DAO{
// <mapper namespace="com.multi.ongo.deal">
	SqlSession sqlSession;
	
	@Autowired
	public DealBoard_DAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}



	//중고거래등록
	public int writeProd(DealBoard_DTO dto) {
		System.out.println("등록 daoImpl : " +dto);
		return sqlSession.insert("com.multi.ongo.deal.deal_write", dto);
	}


	//중고거래 전체조회
	@Override
	public List<DealBoard_DTO> boardlist() {
		return sqlSession.selectList("com.multi.ongo.deal.selectAll");
	}


	//중고거래 게시글읽기
	@Override
	public DealBoard_DTO dealRead(int deal_number) {
		return sqlSession.selectOne("com.multi.ongo.deal.dealRead", deal_number);
	}


	//중고거래 게시글 수정(일반폼수정)
	@Override
	public int update(DealBoard_DTO dto) {
		System.out.println("DAO임플_수정) dto 수정파라터체크 : " +dto);
		return sqlSession.update("com.multi.ongo.deal.dealUpdate", dto);
	}



	//중고거래 게시글 수정(첨부파일)
	@Override
	public int updateFile (List<DealFile_DTO> filedtolist) {
		System.out.println("[DAOImpl_수정] 파라터체크 : " +filedtolist);
		return sqlSession.update("com.multi.ongo.deal.updateFile", filedtolist);
	}
	
	
	
	
	//중고거래 게시글삭제
	@Override
	public int dealDelete(int deal_number) {
		return sqlSession.delete("com.multi.ongo.deal.dealDelete", deal_number);
	}


	//중고거래 게시글검색(제목,작성자,작성일)
	@Override
	public List<DealBoard_DTO> searchData(String tag, String searchData) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("tag", tag);
		map.put("searchData", searchData);
		return sqlSession.selectList("com.multi.ongo.deal.searchData", map);
	}


	//중고거래 거래구분선택
	@Override
	public List<DealBoard_DTO> dealType_list(String dealType) {
		return sqlSession.selectList("com.multi.ongo.deal.dealTypeSearch", dealType);
	}



	@Override //카테고리구분
	public List<DealBoard_DTO> dealType_main(String dealType) {
		return sqlSession.selectList("com.multi.ongo.deal.main_dealcategory", dealType);
	}



	@Override   // 조회
	public int hits_update(int deal_number) {
		return sqlSession.update("com.multi.ongo.deal.hits_update", deal_number);
	}


	
	
	
	
	
	
	
	
	
	
	
	//중고거래글 등록 ( +첨부파일) DealBoard_DTO테이블과 DealFile_DTO테이블에 저장
	@Override
	public int insertFile(List<DealFile_DTO> filedtolist) {
		return sqlSession.insert("com.multi.ongo.deal.insertFile", filedtolist);
	}


	//업로드한파일을 목록조회
	@Override
	public List<DealFile_DTO> getFileList(int deal_number) {
		return sqlSession.selectList("com.multi.ongo.deal.getFileList", deal_number);
	}


	//첨부파일 가져오기(다운로드)
	@Override
	public DealFile_DTO getFile(int deal_number, int dealFile_number) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("deal_number", deal_number);
		map.put("dealFile_number", dealFile_number);
		//System.out.println("DAOImpl map체크 : " + map);
		return sqlSession.selectOne("com.multi.ongo.deal.getFile", map);
	}


	//조인한 결과로 중고거래 게시글 타입별 조회
	@Override
	public List<DealTotalList_DTO> dealTotalList() {
		return sqlSession.selectList("com.multi.ongo.deal.dealTotalList");
	}

	//조인한 결과로 중고거래 게시글 타입별 조회
	@Override
	public List<DealTotalList_DTO> dealTotalList(String dealType) {
		return sqlSession.selectList("com.multi.ongo.deal.dealTotalList2", dealType);
	}


	
	
	
	
	
	
}
