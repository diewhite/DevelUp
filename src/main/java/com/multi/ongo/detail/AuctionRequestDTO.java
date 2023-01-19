package com.multi.ongo.detail;

import java.sql.Date;

//중고거래요청 테이블
public class AuctionRequestDTO {
	private int dealreq_no; 	//구매요청번호 (PK) 
	private String seller_id;	//판매자 id
	private String add_user;	//구매요청 유저 id
	private String add_price; 	//입찰가격
	private Date req_time; 		//구매요청날짜
	private int auction_number; 	//글번호 (FK) 
	
	public AuctionRequestDTO() {
	}

	public AuctionRequestDTO(int dealreq_no, String seller_id, String add_user, String add_price, Date req_time,
			int auction_number) {
		super();
		this.dealreq_no = dealreq_no;
		this.seller_id = seller_id;
		this.add_user = add_user;
		this.add_price = add_price;
		this.req_time = req_time;
		this.auction_number = auction_number;
	}

	@Override
	public String toString() {
		return "AuctionRequestDTO [dealreq_no=" + dealreq_no + ", seller_id=" + seller_id + ", add_user=" + add_user
				+ ", add_price=" + add_price + ", req_time=" + req_time + ", auction_number=" + auction_number
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public void setDealreq_no(int dealreq_no) {
		this.dealreq_no = dealreq_no;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public void setAdd_user(String add_user) {
		this.add_user = add_user;
	}

	public void setAdd_price(String add_price) {
		this.add_price = add_price;
	}

	public void setReq_time(Date req_time) {
		this.req_time = req_time;
	}

	public void setAuction_number(int auction_number) {
		this.auction_number = auction_number;
	}
	
	}

	