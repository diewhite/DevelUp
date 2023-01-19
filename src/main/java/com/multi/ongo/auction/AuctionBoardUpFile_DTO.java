package com.multi.ongo.auction;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class AuctionBoardUpFile_DTO {
	
	private List<MultipartFile> files ; 
	
	private String board_no;
	private String originalFilename;
	private String storeFilename;
	private String boardFileno;
	
	public AuctionBoardUpFile_DTO() {
		
	}
	
	public AuctionBoardUpFile_DTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}
	
	//boardfile의 상세정보 - insert
	public AuctionBoardUpFile_DTO(String originalFilename, String storeFilename, String boardFileno) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.boardFileno = boardFileno;
	}
	
	//select
	public AuctionBoardUpFile_DTO(String board_no, String originalFilename, String storeFilename, String boardFileno) {
		super();
		this.board_no = board_no;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.boardFileno = boardFileno;
	}

	
	
	@Override
	public String toString() {
		return "BoardFileDTO [board_no=" + board_no + ", originalFilename=" + originalFilename + ", storeFilename="
				+ storeFilename + ", boardFileno=" + boardFileno + "]";
	}

	public String getBoard_no() {
		return board_no;
	}
	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getStoreFilename() {
		return storeFilename;
	}
	public void setStoreFilename(String storeFilename) {
		this.storeFilename = storeFilename;
	}

	public String getBoardFileno() {
		return boardFileno;
	}

	public void setBoardFileno(String boardFileno) {
		this.boardFileno = boardFileno;
	}
		
}
