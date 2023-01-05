package com.multi.ongo.auction;

import java.sql.Date;

public class AuctionBoard_DTO {
	private String id;  //?��???��?��?��  - ?��게시�??��록시?��?��
	private String dealType;    // 중고거래구분( 중고거래,?��?��)  - ?��게시�??��록시?��?��
	private String product_category;  //?��?��카테고리(?���??��기기,?���? ?��?��)  - ?��게시�??��록시?��?��
	private String product_state; // ?��?��?��?��(?��매중,거래진행�?, ?���? )  - ?��?��=  ?��게시�??��록시?��?��
	private int product_price; // ?��?���?�?  - ?��게시�??��록시?��?��
	private String board_title; // ?���?  - ?��게시�??��록시?��?��
	private String product_name; //?��?���?  - ?��게시�??��록시?��?��
	private String board_content; // ?��?��  - ?��게시�??��록시?��?��
	private int hits; // 조회?��	?��?��=  
	private Date write_date; //?��?��?��  - ?��?��=  ?��게시�??��록시?��?��
	private int deal_number; // 거래번호  - ?��?��=  ?��게시�??��록시?��?��
	
	
	public AuctionBoard_DTO() {
		
	}


	public AuctionBoard_DTO(String id, String dealType, String product_category, String product_state, int product_price,
			String board_title, String product_name, String board_content, int hits, Date write_date, int deal_number) {
		super();
		this.id = id; //?��?��?��
		this.dealType = dealType; // 거래구분
		this.product_category = product_category; // ?��?��카테고리
		this.product_state = product_state; //?��?��?��?��(진행중등) ?��?��
		this.product_price = product_price; //?��?���?�?
		this.board_title = board_title; // 게시�??���?
		this.product_name = product_name; //?��?���?
		this.board_content = board_content; //게시�??��?��
		this.hits = hits; // 조회?��
		this.write_date = write_date; //?��?��?�� 맵퍼?��?��
		this.deal_number = deal_number; // 게시번호 맵퍼?��?��(?��???��)
	}
	




	@Override
	public String toString() {
		return "DealBoard_DTO [id=" + id + ", dealType=" + dealType + ", product_category=" + product_category
				+ ", product_state=" + product_state + ", product_price=" + product_price + ", board_title="
				+ board_title + ", product_name=" + product_name + ", board_content=" + board_content + ", hits=" + hits
				+ ", write_date=" + write_date + ", deal_number=" + deal_number + "]";
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


	public int getDeal_number() {
		return deal_number;
	}


	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
	}
	
	
	
	
	
	
	
	
}
