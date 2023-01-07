package com.multi.ongo.history;

import java.sql.Date;

public class DealHistoryDTO {
	private int deal_number;	//PK 
	private String member_id; 
	private String product_state;
	private String dealtype;
	private String product_category;
	private String board_title;
	private int product_price;
	private String board_content;
	private int hits;
	private Date write_date;
	private String list_photo;
	
	public DealHistoryDTO () {
		
	}

	public DealHistoryDTO(int deal_number, String member_id, String product_state, String dealtype,
			String product_category, String board_title, int product_price, String board_content, int hits,
			Date write_date, String list_photo) {
		super();
		this.deal_number = deal_number;
		this.member_id = member_id;
		this.product_state = product_state;
		this.dealtype = dealtype;
		this.product_category = product_category;
		this.board_title = board_title;
		this.product_price = product_price;
		this.board_content = board_content;
		this.hits = hits;
		this.write_date = write_date;
		this.list_photo = list_photo;
	}

	@Override
	public String toString() {
		return "ProductHistoryDTO [deal_number=" + deal_number + ", member_id=" + member_id + ", product_state="
				+ product_state + ", dealtype=" + dealtype + ", product_category=" + product_category + ", board_title="
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

	public String getProduct_state() {
		return product_state;
	}

	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}

	public String getDealtype() {
		return dealtype;
	}

	public void setDealtype(String dealtype) {
		this.dealtype = dealtype;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
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
