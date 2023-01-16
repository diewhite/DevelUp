package com.multi.ongo.history;

import java.sql.Date;

//중고거래요청 테이블
public class DealRequestDTO {
	private int dealreq_no; 	//구매요청번호 (PK) 
	private String seller_id;	//구매자 id
	private String buyer_id ;	//판매자 id
	private String req_id;		//구매요청 유저 id
	private Date req_time; 		//구매요청날짜
	private int deal_number; 	//글번호 (FK) 
	
	public DealRequestDTO() {
		
	}
	

	
	
	public DealRequestDTO(String req_id, int deal_number) {
		super();
		this.req_id = req_id;
		this.deal_number = deal_number;
	}



	public DealRequestDTO(int dealreq_no, String seller_id, String buyer_id, String req_id, Date req_time,
			int deal_number) {
		super();
		this.dealreq_no = dealreq_no;
		this.seller_id = seller_id;
		this.buyer_id = buyer_id;
		this.req_id = req_id;
		this.req_time = req_time;
		this.deal_number = deal_number;
	}

	


	@Override
	public String toString() {
		return "DealRequestDTO [dealreq_no=" + dealreq_no + ", seller_id=" + seller_id + ", buyer_id=" + buyer_id
				+ ", req_id=" + req_id + ", req_time=" + req_time + ", deal_number=" + deal_number + "]";
	}



	public int getDealreq_no() {
		return dealreq_no;
	}



	public void setDealreq_no(int dealreq_no) {
		this.dealreq_no = dealreq_no;
	}



	public String getSeller_id() {
		return seller_id;
	}



	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}



	public String getBuyer_id() {
		return buyer_id;
	}



	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}



	public String getReq_id() {
		return req_id;
	}



	public void setReq_id(String req_id) {
		this.req_id = req_id;
	}



	public Date getReq_time() {
		return req_time;
	}



	public void setReq_time(Date req_time) {
		this.req_time = req_time;
	}



	public int getDeal_number() {
		return deal_number;
	}



	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
	}
	

	
	
}
