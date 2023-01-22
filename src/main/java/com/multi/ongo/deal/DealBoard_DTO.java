package com.multi.ongo.deal;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.multi.ongo.payment.PaymentDAO;
import com.multi.ongo.payment.PaymentDTO;

public class DealBoard_DTO {
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
	

		public DealBoard_DTO() {
		
		
	}



	public DealBoard_DTO(int deal_number, String member_id, String dealType, String product_category,
			String product_state, String board_title, int product_price, String board_content, int hits,
			Date write_date, String buyer_id) {
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
		this.buyer_id = buyer_id;
	}



	public DealBoard_DTO(int deal_number, String member_id, String dealType, String product_category,
			String product_state, String board_title, int product_price, String board_content, int hits,
			Date write_date, List<MultipartFile> dealFiles, String buyer_id) {
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
	}



	public DealBoard_DTO(int deal_number, String member_id, String dealType, String product_category,
			String product_state, String board_title, int product_price, String board_content, int hits,
			Date write_date, List<MultipartFile> dealFiles) {
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
	}




	public List<MultipartFile> getDealFiles() {
		return dealFiles;
	}



	public void setDealFiles(List<MultipartFile> dealFiles) {
		this.dealFiles = dealFiles;
	}



	


	


	

	@Override
	public String toString() {
		return "DealBoard_DTO [deal_number=" + deal_number + ", member_id=" + member_id + ", dealType=" + dealType
				+ ", product_category=" + product_category + ", product_state=" + product_state + ", board_title="
				+ board_title + ", product_price=" + product_price + ", board_content=" + board_content + ", hits="
				+ hits + ", write_date=" + write_date + ", dealFiles=" + dealFiles + ", buyer_id=" + buyer_id
				+ ", pay_state=" + "]";
	}



	public String getBuyer_id() {
		return buyer_id;
	}



	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
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


}
