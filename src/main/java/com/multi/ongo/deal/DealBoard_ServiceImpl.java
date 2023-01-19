package com.multi.ongo.deal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class DealBoard_ServiceImpl implements DealBoard_Service {

	
	DealBoard_DAO dao;
	
	@Autowired
	public DealBoard_ServiceImpl(DealBoard_DAO dao) {
		super();
		this.dao = dao;
	}

	//중고거래등록
//	@Override
//	public int writeProd(DealBoard_DTO dto) {
//		return dao.writeProd(dto);
//	}

	//중고거래 전체조회
	@Override
	public List<DealBoard_DTO> boardlist() {
		return dao.boardlist();
	}
	
	//중고거래 게시글읽기
	@Override
	public DealBoard_DTO dealRead(int deal_number) {
		return dao.dealRead(deal_number);
	}

	
	
	//중고거래 게시글 삭제
	@Override
	public int dealDelete(int deal_number) {
		return dao.dealDelete(deal_number);
	}

	
	//중고거래 게시글 하단검색
	@Override
	public List<DealBoard_DTO> searchData(String tag, String searchData) {
		return dao.searchData(tag, searchData);
	}

	
	//중고거래 게시글 타입구분
	@Override
	public List<DealBoard_DTO> dealType_list(String dealType) {
		List<DealBoard_DTO> list = null;
		if(dealType != null) {
			if(dealType.equals("all")) {
				list = dao.boardlist();
			}else {
				list = dao.dealType_list(dealType);
			}
		}
			return list;
	}
	
	//조인한 결과로 중고거래 게시글 타입별 조회
	@Override
	public List<DealTotalList_DTO> dealTotalList(String dealType) {
		List<DealTotalList_DTO> list = null;
		if(dealType != null) {
			if(dealType.equals("all")) {
				list = dao.dealTotalList();
			}else {
				list = dao.dealTotalList(dealType);
			}
		}
			return list;
	}

	
	
	
	//메인페이지 ajax사용 타입구분
	@Override
	public List<DealBoard_DTO> dealType_main(String dealType) {
		List<DealBoard_DTO> list = null;
		if(dealType != null) {
			if(dealType.equals("all")) {
				list = dao.boardlist();
			}else {
				list = dao.dealType_list(dealType);
			}
		}
			return list;
	}

	//조회수
	@Override
	public int hits_update(int deal_number) {
		return dao.hits_update(deal_number);
	}

	
	
	
	
	
	
	
	
	
	//업로드한파일을 목록조회
	@Override
	public List<DealFile_DTO> getFileList(int deal_number) {
		//System.out.println("서비스임플 deal_number 파라미터 체크 : " + deal_number);
		return dao.getFileList(deal_number);
	}
	//중고거래글 등록 ( +첨부파일) DealBoard_DTO테이블과 DealFile_DTO테이블에 저장
	@Override
	public int insertFile(DealBoard_DTO dto, List<DealFile_DTO> listfiledto) {
		if(listfiledto.isEmpty()) {
			dao.writeProd(dto);
			
		}else {
			dao.writeProd(dto);
			dao.insertFile(listfiledto);
		}
		return 0;
	}
	//첨부파일 가져오기(다운로드)
	@Override
	public DealFile_DTO getFile(int deal_number, int dealFile_number) {
		return dao.getFile(deal_number, dealFile_number);
	}
	
	//중고거래 게시글수정(+첨부파일)
//	@Override
//	public int update(DealBoard_DTO dto, List<DealFile_DTO> listfiledto) {
//		System.out.println("[ServiceImpl_수정] 파리터체크 : " +listfiledto);
//		dao.update(dto);
//		dao.updateFile(listfiledto);
//		return 0;
//	}

	//중고거래 게시글수정
	@Override
	public int update(DealBoard_DTO dto) {
		return dao.update(dto);
		 
	}
	
	
	
	
	
	
	
	
	
}
