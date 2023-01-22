package com.multi.ongo.payment;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class PayTotalDTO {
	//deal_table2
	private int deal_number; // 거래번호  
	private String member_id;  //유저아이디  
	private String dealType;    // 중고거래구분( 중고거래,나눔) 
	private String product_category;  //상품카테고리(디지털기기,의류 등등)
	private String product_state; // 상품상태(판매중,거래진행중, 완료 )  
	private String board_title; // 제목  
	private int product_price; // 상품가격
	private String board_content; // 내용
	private int hits; // 조회수	  
	private Date write_date; //작성일 
	private List<MultipartFile> dealFiles; // 클라가 전송하는 바이너리파일 데이터를 스프링 mvc내부에서 MultipartFile객체로 저장
	private String buyer_id;									   // 첨부파일이 여러개인경우 List나 배열로 관리
	//payment
	private String seller_id;	//판매자(FK:member_id)
//	private String buyer_id;	//구매자
	private int board_number;	//중고거래게시글 번호(FK:deal_number)
	private int pay_number;		//주문번호(PK)
//	private int product_price;	//상품가격
	private Date pay_date;		//결제날짜 
	private String pay_state;	//결제상태 (결제대기/결제완료/결제취소)
	private int auction_number;	//경매게시글 번호(FK:auction_number)
	
	public PayTotalDTO(){}

	public PayTotalDTO(int deal_number, String member_id, String dealType, String product_category,
			String product_state, String board_title, int product_price, String board_content, int hits,
			Date write_date, List<MultipartFile> dealFiles, String buyer_id, String seller_id, int board_number,
			int pay_number, Date pay_date, String pay_state, int auction_number) {
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
		this.dealFiles = dealFiles;
		this.buyer_id = buyer_id;
		this.seller_id = seller_id;
		this.board_number = board_number;
		this.pay_number = pay_number;
		this.pay_date = pay_date;
		this.pay_state = pay_state;
		this.auction_number = auction_number;
	}

	@Override
	public String toString() {
		return "PayTotalDTO [deal_number=" + deal_number + ", member_id=" + member_id + ", dealType=" + dealType
				+ ", product_category=" + product_category + ", product_state=" + product_state + ", board_title="
				+ board_title + ", product_price=" + product_price + ", board_content=" + board_content + ", hits="
				+ hits + ", write_date=" + write_date + ", dealFiles=" + dealFiles + ", buyer_id=" + buyer_id
				+ ", seller_id=" + seller_id + ", board_number=" + board_number + ", pay_number=" + pay_number
				+ ", pay_date=" + pay_date + ", pay_state=" + pay_state + ", auction_number=" + auction_number + "]";
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

	public List<MultipartFile> getDealFiles() {
		return dealFiles;
	}

	public void setDealFiles(List<MultipartFile> dealFiles) {
		this.dealFiles = dealFiles;
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

	public int getBoard_number() {
		return board_number;
	}

	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}

	public int getPay_number() {
		return pay_number;
	}

	public void setPay_number(int pay_number) {
		this.pay_number = pay_number;
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

	public int getAuction_number() {
		return auction_number;
	}

	public void setAuction_number(int auction_number) {
		this.auction_number = auction_number;
	}
	
	
	
}
