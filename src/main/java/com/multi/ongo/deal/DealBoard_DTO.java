package com.multi.ongo.deal;

import java.sql.Date;

public class DealBoard_DTO {
	public class DealBoard_DTO {
		private int deal_number; // 거래번호  - 노쇼=  ★게시글등록시필요
		private String member_id;  //유저아이디  - ★게시글등록불필요 이미로그인
		private String dealType;    // 중고거래구분( 중고거래,나눔)  - ★게시글등록시필요
		private String product_category;  //상품카테고리(디지털기기,의류 등등)  - ★게시글등록시필요
		private String product_state; // 상품상태(판매중,거래진행중, 완료 )  - 노쇼=  ★게시글등록시필요
		private String board_title; // 제목  - ★게시글등록시필요
		private int product_price; // 상품가격  - ★게시글등록시필요
		private String board_content; // 내용  - ★게시글등록시필요
		private int hits; // 조회수	노쇼=  
		private Date write_date; //작성일  - 노쇼=  ★게시글등록시필요
		private String list_photo; // 리스트사진  - ★게시글등록시필요
		

	public DealBoard_DTO() {
		
	}

	public DealBoard_DTO(int deal_number, String member_id, String dealType, String product_category,
			String product_state, String board_title, int product_price, String board_content, int hits,
			Date write_date, String list_photo) {
		super();
		this.deal_number = deal_number;
		this.member_id = member_id;
		this.dealType = dealType;
		this.product_category = product_category;
		this.product_state = product_state;
		this.board_title = board_title;
		this.product_price = product_price;
		this.board_content = board_content;
		this.hits = hits;
		this.write_date = write_date;
		this.list_photo = list_photo;
	}

	@Override
	public String toString() {
		return "DealBoard_DTO [deal_number=" + deal_number + ", member_id=" + member_id + ", dealType=" + dealType
				+ ", product_category=" + product_category + ", product_state=" + product_state + ", board_title="
				+ board_title + ", product_price=" + product_price + ", board_content=" + board_content + ", hits="
				+ hits + ", write_date=" + write_date + ", list_photo=" + list_photo + "]";
	}

	public int getDeal_number() {
		return deal_number;
	}

	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getDealType() {
		return dealType;
	}

	public void setDealType(String dealType) {
		this.dealType = dealType;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	public String getProduct_state() {
		return product_state;
	}

	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public String getList_photo() {
		return list_photo;
	}

	public void setList_photo(String list_photo) {
		this.list_photo = list_photo;
	}


	
	
	
	
	
	
}
