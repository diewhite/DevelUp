package com.multi.ongo.recycle;

import java.sql.Date;

public class RecycleDTO {
	private int no;
	private String send_id;
	private String receive_id;
	private Date write_date;
	private String title;
	private String content;
	
	public RecycleDTO() {
		super();
	}

	public RecycleDTO(int no, String send_id, String receive_id, Date write_date, String title, String content) {
		super();
		this.no = no;
		this.send_id = send_id;
		this.receive_id = receive_id;
		this.write_date = write_date;
		this.title = title;
		this.content = content;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSend_id() {
		return send_id;
	}

	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}

	public String getReceive_id() {
		return receive_id;
	}

	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "RecycleDTO [no=" + no + ", send_id=" + send_id + ", receive_id=" + receive_id + ", write_date="
				+ write_date + ", title=" + title + ", content=" + content + "]";
	}
	
	
}
