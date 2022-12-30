package com.multi.ongo.deal;

import java.util.List;

public interface DealBoard_DAO {
	
	//중고거래등록
	public int writeProd(DealBoard_DTO dto);
	 
	//중고거래 전체조회
	public List<DealBoard_DTO> boardlist();
	
	//중고거래 게시글읽기
	public DealBoard_DTO dealRead(int deal_number);

}
