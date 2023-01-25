package com.multi.ongo.deal;

public class DealFile_DTO {
	private int deal_number;
	private String originalFilename;
	private String storeFilename;
	private int dealFile_number;
	
	public DealFile_DTO() {
		
	}
	
	public DealFile_DTO(int deal_number, String originalFilename, String storeFilename) {
		super();
		this.deal_number = deal_number;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}
	
	
	
	public DealFile_DTO(String originalFilename) {
		super();
		this.originalFilename = originalFilename;
	}

	// 파일의 상세정보 보기 insert
	public DealFile_DTO(String originalFilename, String storeFilename, int dealFile_number) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.dealFile_number = dealFile_number;
	}

	public DealFile_DTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}



	// 조회 select
	public DealFile_DTO(int deal_number, String originalFilename, String storeFilename, int dealFile_number) {
		super();
		this.deal_number = deal_number;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.dealFile_number = dealFile_number;
	}
	
	

	@Override
	public String toString() {
		return "DealFile_DTO [deal_number=" + deal_number + ", originalFilename=" + originalFilename
				+ ", storeFilename=" + storeFilename + ", dealFile_number=" + dealFile_number + "]";
	}

	public int getDeal_number() {
		return deal_number;
	}

	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
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

	public int getDealFile_number() {
		return dealFile_number;
	}

	public void setDealFile_number(int dealFile_number) {
		this.dealFile_number = dealFile_number;
	}
	
	
	
	
	
	
	
}
