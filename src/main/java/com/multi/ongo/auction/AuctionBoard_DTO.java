package com.multi.ongo.auction;

import java.sql.Date;

public class AuctionBoard_DTO {
	private int auction_number ;      // 거래번호  - 노쇼=  ★게시글등록시필요
    private String member_id;           //유저아이디  - ★게시글등록불필요 이미로그인
    private String auction_category;      //상품카테고리(디지털기기,의류 등등)  - 
    private String auction_state;      // 상품상태(입찰중,경매완료 )  - 노
    private String auction_title;    // 제목
    private int hits ;    ; // 조회수
    private Date write_date ;    //작성일  -
    private String board_content;    //내용
    private String list_photo ;     // 리스트사진
    private String min_price ;  // 경매 최소가 - ★게시글등록시필요

    private String start_price ;     // 경매시작가격  - ★게시글등록시필요
    private String add_user1 ;    //입찰자id 1
    private String  add_price1 ;//입찰금액 1
    private String add_time1 ;    //입찰시간 1
    private String add_user2 ;//입찰자id 2
    private String add_price2;    //입찰금액 2
    private String add_time2 ;    //입찰시간 2
    private Date end_date ;        //경매종료시간(24시간)
	
	public AuctionBoard_DTO(){
		
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
	
}
		
	
