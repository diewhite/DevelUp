package com.multi.ongo.deal;

import java.util.List;

public interface DealBoard_DAO {
	
	//중고거래등록
	public int writeProd(DealBoard_DTO dto);
	 
	//중고거래 전체조회
	public List<DealBoard_DTO> boardlist();
	
	//중고거래 게시글읽기
	public DealBoard_DTO dealRead(int deal_number);

	
	//중고거래 게시글 업데이트(수정)
	int update(DealBoard_DTO dto);
	
	
	//중고거래 게시글 삭제
	int dealDelete(int deal_number);
	
	//하단검색
		List<DealBoard_DTO> searchData(String tag, String searchData);
		
	//중고거래 거래구분선택
	public List<DealBoard_DTO> dealType_list(String dealType);	
		
	//중고거래시글 타입-메인
		List<DealBoard_DTO> dealType_main(String dealType);
		
	// 조회수
	public int hits_update(int deal_number);
	
	
	
	
	//업로드한파일을 목록조회
		public List<DealFile_DTO> getFileList(int deal_number);
	//중고거래글 등록 (+첨부파일) DealBoard_DTO테이블과 DealFile_DTO테이블에 저장
	public int insertFile (List<DealFile_DTO> filedtolist); //DealFile_DTO 는 DealBoard_DTO에 종속되어있음
	//첨부파일 가져오기(다운로드)
	DealFile_DTO getFile(int deal_number, int dealFile_number);
		
}
