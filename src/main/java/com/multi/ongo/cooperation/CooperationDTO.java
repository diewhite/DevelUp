package com.multi.ongo.cooperation;

public class CooperationDTO {
	private String name;
	private String addr;
	private String content;
	private String tel;
	private String email;
	
	public CooperationDTO() {
		super();
	}

	public CooperationDTO(String name, String addr, String content, String tel, String email) {
		super();
		this.name = name;
		this.addr = addr;
		this.content = content;
		this.tel = tel;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "CooperationDTO [name=" + name + ", addr=" + addr + ", content=" + content + ", tel=" + tel + ", email="
				+ email + "]";
	}
	
	
}
