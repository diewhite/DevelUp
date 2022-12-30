package com.multi.ongo.history;

import java.sql.Date;

public class ProductHistoryDTO {
	private int product_no;	//상품번호;
	private String buyer_id;	//구매자 id
	private String seller_id;	//판매자 id
	private Date fixed_date;	//거래확정일 
	private String product_name;	//상품명 
	private String product_type;	//거래유형(판매,구매)
	private String product_price;	//상품가격 
	private String product_state;	//거래상태(판매중, 거래진행중, 완료)
	private String board_category;	//중고거래, 나눔 
	
	public ProductHistoryDTO () {
		
	}

	public ProductHistoryDTO(int product_no, String buyer_id, String seller_id, Date fixed_date, String product_name,
			String product_type, String product_price, String product_state, String board_category) {
		super();
		this.product_no = product_no;
		this.buyer_id = buyer_id;
		this.seller_id = seller_id;
		this.fixed_date = fixed_date;
		this.product_name = product_name;
		this.product_type = product_type;
		this.product_price = product_price;
		this.product_state = product_state;
		this.board_category = board_category;
	}

	
	@Override
	public String toString() {
		return "ProductHistoryDTO [product_no=" + product_no + ", buyer_id=" + buyer_id + ", seller_id=" + seller_id
				+ ", fixed_date=" + fixed_date + ", product_name=" + product_name + ", product_type=" + product_type
				+ ", product_price=" + product_price + ", product_state=" + product_state + ", board_category="
				+ board_category + "]";
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public String getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public Date getFixed_date() {
		return fixed_date;
	}

	public void setFixed_date(Date fixed_date) {
		this.fixed_date = fixed_date;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_type() {
		return product_type;
	}

	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getProduct_state() {
		return product_state;
	}

	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}

	public String getBoard_category() {
		return board_category;
	}

	public void setBoard_category(String board_category) {
		this.board_category = board_category;
	}
	
	
	
	
}
