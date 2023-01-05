package com.multi.ongo.auction;

import java.sql.Date;

public class AuctionBoard_DTO {
	private String id;  //?œ ???•„?´?””  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private String dealType;    // ì¤‘ê³ ê±°ë˜êµ¬ë¶„( ì¤‘ê³ ê±°ë˜,?‚˜?ˆ”)  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private String product_category;  //?ƒ?’ˆì¹´í…Œê³ ë¦¬(?””ì§??„¸ê¸°ê¸°,?˜ë¥? ?“±?“±)  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private String product_state; // ?ƒ?’ˆ?ƒ?ƒœ(?Œë§¤ì¤‘,ê±°ë˜ì§„í–‰ì¤?, ?™„ë£? )  - ?…¸?‡¼=  ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private int product_price; // ?ƒ?’ˆê°?ê²?  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private String board_title; // ? œëª?  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private String product_name; //?ƒ?’ˆëª?  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private String board_content; // ?‚´?š©  - ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private int hits; // ì¡°íšŒ?ˆ˜	?…¸?‡¼=  
	private Date write_date; //?‘?„±?¼  - ?…¸?‡¼=  ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	private int deal_number; // ê±°ë˜ë²ˆí˜¸  - ?…¸?‡¼=  ?˜…ê²Œì‹œê¸??“±ë¡ì‹œ?•„?š”
	
	
	public AuctionBoard_DTO() {
		
	}


	public AuctionBoard_DTO(String id, String dealType, String product_category, String product_state, int product_price,
			String board_title, String product_name, String board_content, int hits, Date write_date, int deal_number) {
		super();
		this.id = id; //?•„?´?””
		this.dealType = dealType; // ê±°ë˜êµ¬ë¶„
		this.product_category = product_category; // ?ƒ?’ˆì¹´í…Œê³ ë¦¬
		this.product_state = product_state; //?ƒ?’ˆ?ƒ?ƒœ(ì§„í–‰ì¤‘ë“±) ?ˆ?“ 
		this.product_price = product_price; //?ƒ?’ˆê°?ê²?
		this.board_title = board_title; // ê²Œì‹œê¸?? œëª?
		this.product_name = product_name; //?ƒ?’ˆëª?
		this.board_content = board_content; //ê²Œì‹œê¸??‚´?š©
		this.hits = hits; // ì¡°íšŒ?ˆ˜
		this.write_date = write_date; //?‘?„±?¼ ë§µí¼?—?„œ
		this.deal_number = deal_number; // ê²Œì‹œë²ˆí˜¸ ë§µí¼?—?„œ(?‹œ???Š¤)
	}
	




	@Override
	public String toString() {
		return "DealBoard_DTO [id=" + id + ", dealType=" + dealType + ", product_category=" + product_category
				+ ", product_state=" + product_state + ", product_price=" + product_price + ", board_title="
				+ board_title + ", product_name=" + product_name + ", board_content=" + board_content + ", hits=" + hits
				+ ", write_date=" + write_date + ", deal_number=" + deal_number + "]";
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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


	public int getProduct_price() {
		return product_price;
	}


	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}


	public String getBoard_title() {
		return board_title;
	}


	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
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


	public int getDeal_number() {
		return deal_number;
	}


	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
	}
	
	
	
	
	
	
	
	
}
