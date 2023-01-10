package com.multi.ongo.auction;

import java.sql.Date;

public class AuctionBoard_DTO {
	private int auction_number ;       // ��Ź�ȣ(�Խñ۹�ȣ)
	private String member_id;               //�ۼ���
	private String auction_category;     //��ǰī�װ�
	private String auction_state;       //��Ż���(������,��ſϷ�
	private String auction_title;	//�������
	private int hits ;	//��ȸ��
	private Date write_date ;	//�ۼ���+��Ž��۽ð�
	private String board_content;	//��ų���
	private String list_photo ;	//�ۼ�����
	private String min_price ; // ��� �ּҰ�
	private String start_price ;	//���۰�
	private String end_price;	//������
	private String add_user1 ;	//������ id1
	private String  add_price1 ;//�����ݾ�1
	private String add_time1 ;	//������� �ð�
	private String add_user2 ;//������ id2
	private String add_price2;	//�����ݾ�2
	private String add_time2 ;	//������� �ð�
	private Date end_date ;		//������(24�ð�)
	
	public AuctionBoard_DTO(){
		
	}
}
   
	
	
	
	
	
	
	public int getAuction_number() {
		return auction_number;
	}
	public void setAuction_number(int auction_number) {
		this.auction_number = auction_number;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getAuction_category() {
		return auction_category;
	}
	public void setAuction_category(String auction_category) {
		this.auction_category = auction_category;
	}
	public String getAuction_state() {
		return auction_state;
	}
	public void setAuction_state(String auction_state) {
		this.auction_state = auction_state;
	}
	public String getAuction_title() {
		return auction_title;
	}
	public void setAuction_title(String auction_title) {
		this.auction_title = auction_title;
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
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getList_photo() {
		return list_photo;
	}
	public void setList_photo(String list_photo) {
		this.list_photo = list_photo;
	}
	public String getMin_price() {
		return min_price;
	}
	public void setMin_price(String min_price) {
		this.min_price = min_price;
	}
	public String getStart_price() {
		return start_price;
	}
	public void setStart_price(String start_price) {
		this.start_price = start_price;
	}
	public String getEnd_price() {
		return end_price;
	}
	public void setEnd_price(String end_price) {
		this.end_price = end_price;
	}
	public String getAdd_user1() {
		return add_user1;
	}
	public void setAdd_user1(String add_user1) {
		this.add_user1 = add_user1;
	}
	public String getAdd_price1() {
		return add_price1;
	}
	public void setAdd_price1(String add_price1) {
		this.add_price1 = add_price1;
	}
	public String getAdd_time1() {
		return add_time1;
	}
	public void setAdd_time1(String add_time1) {
		this.add_time1 = add_time1;
	}
	public String getAdd_user2() {
		return add_user2;
	}
	public void setAdd_user2(String add_user2) {
		this.add_user2 = add_user2;
	}
	public String getAdd_price2() {
		return add_price2;
	}
	public void setAdd_price2(String add_price2) {
		this.add_price2 = add_price2;
	}
	public String getAdd_time2() {
		return add_time2;
	}
	public void setAdd_time2(String add_time2) {
		this.add_time2 = add_time2;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	

		
	
