package com.multi.ongo.detail;

import java.sql.Date;

public class AuctionDetail_DTO {
	private int auction_number; // 거래번호
	private String member_id;  //유저아이디
	private String auction_category;    // 경매카테고리
	private String auction_state; // 상품상태(경매중,거래진행중, 낙찰완료 
	private String auction_title; // 제목
	private Date write_date; //작성일(시작일)
	private String board_content; // 내용 
	private String list_photo; // 리스트사진
	private int start_price; //경매시작가
	private String add_user1;	//입찰자
	private int add_price; //현재가격
	private int add_time1;
	private int hits; // 조회수
	private Date end_date; //마감일(24시간)
	
	//기본생성자
	public AuctionDetail_DTO() {
	}
	
	//생성자 (generate constructor using fields)
	
	public AuctionDetail_DTO(int auction_number, String member_id, String auction_category, String auction_state,
			String auction_title, Date write_date, String board_content, String list_photo, int start_price,
			String add_user1, int add_price, int add_time1, int hits, Date end_date) {
		super();
		this.auction_number = auction_number;
		this.member_id = member_id;
		this.auction_category = auction_category;
		this.auction_state = auction_state;
		this.auction_title = auction_title;
		this.write_date = write_date;
		this.board_content = board_content;
		this.list_photo = list_photo;
		this.start_price = start_price;
		this.add_user1 = add_user1;
		this.add_price = add_price;
		this.add_time1 = add_time1;
		this.hits = hits;
		this.end_date = end_date;
	}

	//generate tostring
	@Override
	public String toString() {
		return "AuctionDetail_DTO [auction_number=" + auction_number + ", member_id=" + member_id
				+ ", auction_category=" + auction_category + ", auction_state=" + auction_state + ", auction_title="
				+ auction_title + ", write_date=" + write_date + ", board_content=" + board_content + ", list_photo="
				+ list_photo + ", start_price=" + start_price + ", add_user1=" + add_user1 + ", add_price=" + add_price
				+ ", add_time1=" + add_time1 + ", hits=" + hits + ", end_date=" + end_date + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	//Generate getters and setters
	public void setAuction_number(int auction_number) {
		this.auction_number = auction_number;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public void setAuction_category(String auction_category) {
		this.auction_category = auction_category;
	}

	public void setAuction_state(String auction_state) {
		this.auction_state = auction_state;
	}

	public void setAuction_title(String auction_title) {
		this.auction_title = auction_title;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public void setList_photo(String list_photo) {
		this.list_photo = list_photo;
	}

	public void setStart_price(int start_price) {
		this.start_price = start_price;
	}

	public void setAdd_user1(String add_user1) {
		this.add_user1 = add_user1;
	}

	public void setAdd_price(int add_price) {
		this.add_price = add_price;
	}

	public void setAdd_time1(int add_time1) {
		this.add_time1 = add_time1;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	
	
	
	
	
}
