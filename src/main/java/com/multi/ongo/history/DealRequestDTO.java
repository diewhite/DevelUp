package com.multi.ongo.history;

import java.sql.Date;

//중고거래요청 테이블
public class DealRequestDTO {
	private int deal_number;	//글번호(FK)
	private String req_id;		//요청ID
	private Date req_time; 		//요청날짜&시간 
	
	public DealRequestDTO() {
		
	}

	
	@Override
	public String toString() {
		return "DealRequestDTO [deal_number=" + deal_number + ", req_id=" + req_id + ", req_time=" + req_time + "]";
	}


	public DealRequestDTO(int deal_number, String req_id, Date req_time) {
		super();
		this.deal_number = deal_number;
		this.req_id = req_id;
		this.req_time = req_time;
	}


	public int getDeal_number() {
		return deal_number;
	}


	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
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
	
	
}
