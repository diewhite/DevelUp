package com.multi.deal;

import java.sql.Date;

public class DealBoardDTO {
	private String id;  //유저아이디
	private String dealType;    // 중고거래구분( 중고거래,나눔)
	private String product_category;  //상품카테고리(디지털기기,의류 등등)
	private String product_state; // 상품상태(판매중,거래진행중, 완료 )
	private int product_price; // 상품가격
	private String board_title; // 제목
	private String product_name; //상품명
	private String board_content; // 내용
	private int hits; // 조회수
	private Date write_date; //작성일
	
	
	public DealBoardDTO() {
		
	}
	public DealBoardDTO(String id, String dealType, String product_category, String product_state, int product_price,
			String board_title, String product_name, String board_content, int hits, Date write_date) {
		super();
		this.id = id;
		this.dealType = dealType;
		this.product_category = product_category;
		this.product_state = product_state;
		this.product_price = product_price;
		this.board_title = board_title;
		this.product_name = product_name;
		this.board_content = board_content;
		this.hits = hits;
		this.write_date = write_date;
	}
	
	
	
	
	@Override
	public String toString() {
		return "DealDTO [id=" + id + ", dealType=" + dealType + ", product_category=" + product_category
				+ ", product_state=" + product_state + ", product_price=" + product_price + ", board_title="
				+ board_title + ", product_name=" + product_name + ", board_content=" + board_content + ", hits=" + hits
				+ ", write_date=" + write_date + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
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
	
	
	
	
	
}
