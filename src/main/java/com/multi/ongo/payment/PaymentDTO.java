package com.multi.ongo.payment;

import java.sql.Date;

import com.multi.ongo.deal.DealBoard_DTO;

public class PaymentDTO {
	private String seller_id;	//판매자(FK:member_id)
	private String buyer_id;	//구매자
	private int board_number;	//중고거래게시글 번호(FK:deal_number)
	private int pay_number;		//주문번호(PK)
	private int product_price;	//상품가격
	private Date pay_date;		//결제날짜 
	private String pay_state;	//결제상태 (결제대기/결제완료/결제취소)
	private int auction_number;	//경매게시글 번호(FK:auction_number)
	
	
	

	
	
	
	//payRequest 파라미터 담을 DTO
	public PaymentDTO(String seller_id, String buyer_id, int board_number, int product_price) {
		super();
		this.seller_id = seller_id;
		this.buyer_id = buyer_id;
		this.board_number = board_number;
		this.product_price = product_price;
	}
	


	
	public PaymentDTO(String seller_id, String buyer_id, int board_number, int pay_number,
		int product_price, Date pay_date, String pay_state, int auction_number) {
		super();
		this.seller_id = seller_id;
		this.buyer_id = buyer_id;
		this.board_number = board_number;
		this.pay_number = pay_number;
		this.product_price = product_price;
		this.pay_date = pay_date;
		this.pay_state = pay_state;
		this.auction_number = auction_number;
	}

	@Override
	public String toString() {
		return "PaymentDTO [seller_id=" + seller_id + ", buyer_id=" + buyer_id + ", board_number=" + board_number
				+ ", auction_number=" + auction_number + ", pay_number=" + pay_number + ", product_price="
				+ product_price + ", pay_date=" + pay_date + ", pay_state=" + pay_state + ", dealDTO=" + "]";
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

	public int getBoard_number() {
		return board_number;
	}

	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}

	public int getAuction_number() {
		return auction_number;
	}

	public void setAuction_number(int auction_number) {
		this.auction_number = auction_number;
	}

	public int getPay_number() {
		return pay_number;
	}

	public void setPay_number(int pay_number) {
		this.pay_number = pay_number;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public Date getPay_date() {
		return pay_date;
	}

	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	public String getPay_state() {
		return pay_state;
	}

	public void setPay_state(String pay_state) {
		this.pay_state = pay_state;
	}


	
	
	
}
