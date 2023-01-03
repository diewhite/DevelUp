package com.multi.ongo.note;

public class NoteDTO {
	private int no;
	private String send_id;
	private String receive_id;
	private String send_time;
	private String read_time;
	private String content;
	private int read_chk;
	
	public NoteDTO() {
		
	}
	
	public NoteDTO(String send_id, String receive_id, String content) {
		super();
		this.send_id = send_id;
		this.receive_id = receive_id;
		this.content = content;
	}

	public NoteDTO(int no, String send_id, String receive_id, String send_time, String read_time, String content,
			int read_chk) {
		super();
		this.no = no;
		this.send_id = send_id;
		this.receive_id = receive_id;
		this.send_time = send_time;
		this.read_time = read_time;
		this.content = content;
		this.read_chk = read_chk;
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
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public String getRead_time() {
		return read_time;
	}
	public void setRead_time(String read_time) {
		this.read_time = read_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRead_chk() {
		return read_chk;
	}
	public void setRead_chk(int read_chk) {
		this.read_chk = read_chk;
	}

	@Override
	public String toString() {
		return "NoteDTO [no=" + no + ", send_id=" + send_id + ", receive_id=" + receive_id + ", send_time=" + send_time
				+ ", read_time=" + read_time + ", content=" + content + ", read_chk=" + read_chk + "]";
	}
	
	
}
