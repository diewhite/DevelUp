package com.multi.ongo.deal;

public class DealFile_DTO {
	private int deal_number;
	private String originalFilename;
	private String storeFilename;
	
	public DealFile_DTO(int deal_number, String originalFilename, String storeFilename) {
		super();
		this.deal_number = deal_number;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}
	
	
	

	public DealFile_DTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}




	@Override
	public String toString() {
		return "DealFile_DTO [deal_number=" + deal_number + ", originalFilename=" + originalFilename
				+ ", storeFilename=" + storeFilename + "]";
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
	
	
	
	
	
	
	
}
