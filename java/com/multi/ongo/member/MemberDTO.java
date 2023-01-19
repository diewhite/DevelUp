package com.multi.ongo.member;
import java.sql.Date;

// 컬럼명을 정의해 놓은것 = 멤버변수 라고 한다
public class MemberDTO {
	private int member_no; //회원번호 시퀀스
	private String member_id; //회원아이디 primary key 
	private String member_pw; // 비밀번호
	private String member_name; //이름
	private String zipcode; //우편번호
	private String member_addr1; // 주소 = 도로명주소
	private String member_addr2; // 주소 = 상세주소
	private String member_phone; //휴대폰번호
	private String phone1; //010
	private String phone2; //1111
	private String phone3; //2222
	private String member_email; //이메일
	private String email1; //psj
	private String email2; //@naver.com
	private String email99;//이메일주소 직접입력값
	private String member_role; //회원권한 (일반/관리자) 1 or 99
	private Date member_date; // 가입일
	private String member_sign; //가입상태 (가입/삭제)
	public MemberDTO() {
       
	}
	
	//member.xml에서 업데이트를추가로 만들경우 생성자 생성 = 우클릭 > 소스 > 유징필드 순서가 중요함!!
	//전체 생성자 
	public MemberDTO(int member_no, String member_id, String member_pw, String member_name, String zipcode,String member_addr1,
			String member_addr2,  String member_phone, String member_email, String member_role,
			Date member_date, String member_sign) {
		super();
		this.member_no = member_no;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.zipcode = zipcode;
		this.member_addr1 = member_addr1;
		this.member_addr2 = member_addr2;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_role = member_role;
		this.member_date = member_date;
		this.member_sign = member_sign;
		
	}

	
	@Override
	public String toString() {
		return "MemberDTO [member_no=" + member_no + ", member_id=" + member_id + ", member_pw=" + member_pw
				+ ", member_name=" + member_name + ", zipcode=" + zipcode + ", member_addr1=" + member_addr1
				+ ", member_addr2=" + member_addr2 + ", member_phone=" + member_phone + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", member_email=" + member_email + ", email1=" + email1
				+ ", email2=" + email2 + ", email99=" + email99 + ", member_role=" + member_role + ", member_date="
				+ member_date + ", member_sign=" + member_sign + "]";
	}

	public String getEmail99() {
		return email99;
	}

	public void setEmail99(String email99) {
		this.email99 = email99;
	}

	
	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
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
	public Date getMember_date() {
		return member_date;
	}
	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}
	public String getMember_sign() {
		return member_sign;
	}
	public void setMember_sign(String member_sign) {
		this.member_sign = member_sign;
	}

	
}
