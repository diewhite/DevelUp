package com.multi.ongo.history;

import java.sql.Date;

public class ProductHistoryDTO {
	private int product_no;	//상품번호;
	private String buyer_id;	//구매자 id
	private String seller_id;	//판매자 id
	private Date update_date;	//게시글 작성일
	private String product_name;	//상품명 
	private String product_title;	//중고거래 게시글 제목
	private String product_type;	//거래유형(판매,구매)
	private String product_price;	//상품가격 
	private String product_state;	//거래상태(판매중, 거래진행중, 판매완료)
	private String board_category;	//중고거래, 나눔 
	
	public ProductHistoryDTO () {
		
	}

	
	
	
	
	
}
