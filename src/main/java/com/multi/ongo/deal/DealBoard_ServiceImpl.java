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
	@Override
	public int writeProd(DealBoard_DTO dto) {
		return dao.writeProd(dto);
	}

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
	//중고거래 게시글수정
	@Override
	public int update(DealBoard_DTO dto) {
		return dao.update(dto);
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

	
	//중고거래 거래구분선택
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

	@Override
	public int hits_update(int deal_number) {
		return dao.hits_update(deal_number);
	}

}
