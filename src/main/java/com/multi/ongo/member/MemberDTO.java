package com.multi.ongo.member;
import java.sql.Date;

public class MemberDTO {
	private String member_id; //회원아이디
	private int member_no; //회원번호
	private String member_pw; // 비밀번호
	private String member_name; //이름
	private String member_addr1; // 주소 = 도로명주소
	private String member_addr2; // 상세주소
	private String member_post; //우편번호
	private String member_phone; //휴대폰번호
	private String member_email; //이메일주소
	private String member_role; //회원권한 (일반/관리자)
	private Date reg_date; // 가입일
	public MemberDTO() {
		
	}
	
	public MemberDTO(String member_id, int member_no, String member_pw, String member_name, String member_addr1,
			String member_addr2, String member_post, String member_phone, String member_email, String member_role,
			Date reg_date) {
		super();
		this.member_id = member_id;
		this.member_no = member_no;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_addr1 = member_addr1;
		this.member_addr2 = member_addr2;
		this.member_post = member_post;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_role = member_role;
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [member_id=" + member_id + ", member_no=" + member_no + ", member_pw=" + member_pw
				+ ", member_name=" + member_name + ", member_addr1=" + member_addr1 + ", member_addr2=" + member_addr2
				+ ", member_post=" + member_post + ", member_phone=" + member_phone + ", member_email=" + member_email
				+ ", member_role=" + member_role + ", reg_date=" + reg_date + "]";
	}

	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_addr1() {
		return member_addr1;
	}
	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}
	public String getMember_addr2() {
		return member_addr2;
	}
	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}
	public String getMember_post() {
		return member_post;
	}
	public void setMember_post(String member_post) {
		this.member_post = member_post;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_role() {
		return member_role;
	}
	public void setMember_role(String member_role) {
		this.member_role = member_role;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	
}
