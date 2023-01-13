package com.multi.ongo.detail;

import java.sql.Date;
import java.util.List;

import com.multi.ongo.auction.AuctionBoard_DTO;

public class AuctionDetail_DTO {
	private int auction_number; // 거래번호  - 노쇼=  ★게시글등록시필요
	private String member_id;  //유저아이디  - ★게시글등록불필요 이미로그인
	private String dealType;    // 중고거래구분( 중고거래,나눔)  - ★게시글등록시필요
	private String auction_category;  //상품카테고리(디지털기기,의류 등등)  - ★게시글등록시필요
	private String auction_state; // 상품상태(판매중,거래진행중, 완료 )  - 노쇼=  ★게시글등록시필요
	private String auction_title; // 제목  - ★게시글등록시필요
	private int start_price; // 상품가격  - ★게시글등록시필요
	private int end_price;
	private String board_content; // 내용  - ★게시글등록시필요
	private int hits; // 조회수	노쇼=  
	private Date write_date; //작성일  - 노쇼=  ★게시글등록시필요
	private String list_photo; // 리스트사진  - ★게시글등록시필요
	
}
