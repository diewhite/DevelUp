package com.multi.ongo.deal;

import java.util.List;

public interface DealBoard_Service {
	
	//거래등록
		public int writeProd(DealBoard_DTO dto);
		 
	//중고거래 전체조회
	public List<DealBoard_DTO> boardlist();

}
