package com.multi.ongo.auction;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class AuctionBoard_DTO {
	private int auction_number; //거래번호
	private String member_id;		//글쓴사람id
	private String auction_state ;  //경매진행중,경매종료 표시
	private String auction_title;	//제목
	private String hits ;	//조회수
	private String write_date ;
	private String board_content ;
	private String list_photo ;
	private String min_price;
	private String start_price ;
	private String end_price ;
	private String end_date;
	private String current_price; //현재가격
	private String add_user; //입찰테이블용 add_user
	private int add_price; //입찰테이블용 add_price
	private String add_time; //입찰테이블용 add_time
	private String bid_count; //입찰테이블 경매
	private List<MultipartFile> files; //입찰테이블 경매
	
	

	
	//기본생성자
	public AuctionBoard_DTO() {
		super();
	}

	public AuctionBoard_DTO(int auction_number, String member_id, String auction_category, String auction_state,
			String auction_title, String hits, String write_date, String board_content, String list_photo,
			String min_price, String start_price, String end_price, String end_date, String current_price,
			String add_user, int add_price, String add_time, String bid_count) {
		super();
		this.auction_number = auction_number;
		this.member_id = member_id;
		this.auction_state = auction_state;
		this.auction_title = auction_title;
		this.hits = hits;
		this.write_date = write_date;
		this.board_content = board_content;
		this.list_photo = list_photo;
		this.min_price = min_price;
		this.start_price = start_price;
		this.end_price = end_price;
		this.end_date = end_date;
		this.current_price = current_price;
		this.add_user = add_user;
		this.add_price = add_price;
		this.add_time = add_time;
		this.bid_count = bid_count;
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

	public String getHits() {
		return hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
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

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getCurrent_price() {
		return current_price;
	}

	public void setCurrent_price(String current_price) {
		this.current_price = current_price;
	}

	public String getAdd_user() {
		return add_user;
	}

	public void setAdd_user(String add_user) {
		this.add_user = add_user;
	}

	public int getAdd_price() {
		return add_price;
	}

	public void setAdd_price(int add_price) {
		this.add_price = add_price;
	}

	public String getAdd_time() {
		return add_time;
	}

	public void setAdd_time(String add_time) {
		this.add_time = add_time;
	}

	public String getBid_count() {
		return bid_count;
	}

	public void setBid_count(String bid_count) {
		this.bid_count = bid_count;
	}
	
	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "AuctionBoard_DTO [auction_number=" + auction_number + ", member_id=" + member_id   
				+  ", auction_state=" + auction_state + ", auction_title=" + auction_title + ", hits="
				+ hits + ", write_date=" + write_date + ", board_content=" + board_content + ", list_photo="
				+ list_photo + ", min_price=" + min_price + ", start_price=" + start_price + ", end_price=" + end_price
				+ ", end_date=" + end_date + ", current_price=" + current_price + ", add_user=" + add_user
				+ ", add_price=" + add_price + ", add_time=" + add_time + ", bid_count=" + bid_count + "]";
	}
	
}
