package com.multi.ongo.deal;

import java.sql.Date;

public class DealBoard_DTO {
	public class DealBoard_DTO {
		private int deal_number; // �ŷ���ȣ  - ���=  �ڰԽñ۵�Ͻ��ʿ�
		private String member_id;  //�������̵�  - �ڰԽñ۵�Ϻ��ʿ� �̷̹α���
		private String dealType;    // �߰�ŷ�����( �߰�ŷ�,����)  - �ڰԽñ۵�Ͻ��ʿ�
		private String product_category;  //��ǰī�װ�(�����б��,�Ƿ� ���)  - �ڰԽñ۵�Ͻ��ʿ�
		private String product_state; // ��ǰ����(�Ǹ���,�ŷ�������, �Ϸ� )  - ���=  �ڰԽñ۵�Ͻ��ʿ�
		private String board_title; // ����  - �ڰԽñ۵�Ͻ��ʿ�
		private int product_price; // ��ǰ����  - �ڰԽñ۵�Ͻ��ʿ�
		private String board_content; // ����  - �ڰԽñ۵�Ͻ��ʿ�
		private int hits; // ��ȸ��	���=  
		private Date write_date; //�ۼ���  - ���=  �ڰԽñ۵�Ͻ��ʿ�
		private String list_photo; // ����Ʈ����  - �ڰԽñ۵�Ͻ��ʿ�
		

	public DealBoard_DTO() {
		
	}

	public DealBoard_DTO(int deal_number, String member_id, String dealType, String product_category,
			String product_state, String board_title, int product_price, String board_content, int hits,
			Date write_date, String list_photo) {
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
		this.list_photo = list_photo;
	}

	@Override
	public String toString() {
		return "DealBoard_DTO [deal_number=" + deal_number + ", member_id=" + member_id + ", dealType=" + dealType
				+ ", product_category=" + product_category + ", product_state=" + product_state + ", board_title="
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

	public String getList_photo() {
		return list_photo;
	}

	public void setList_photo(String list_photo) {
		this.list_photo = list_photo;
	}


	
	
	
	
	
	
}
