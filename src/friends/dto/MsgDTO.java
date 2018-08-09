package friends.dto;

import java.sql.Date;

public class MsgDTO {
	
	private int msg_no;
	private String sender;
	private String receiver;
	private String msg_title;
	private String msg_txt;
	private Date msg_date;
	
	public MsgDTO(){}
	
	// 삽입용
	public MsgDTO(String sender, String receiver, String msg_title, String msg_txt) {
		super();
		this.sender = sender;
		this.receiver = receiver;
		this.msg_title = msg_title;
		this.msg_txt = msg_txt;
	}

	// 조회용
	public MsgDTO(int msg_no, String sender, String receiver, String msg_title, String msg_txt, Date msg_date) {
		super();
		this.msg_no = msg_no;
		this.sender = sender;
		this.receiver = receiver;
		this.msg_title = msg_title;
		this.msg_txt = msg_txt;
		this.msg_date = msg_date;
	}

	@Override
	public String toString() {
		return "MsgDTO [msg_no=" + msg_no + ", sender=" + sender + ", receiver=" + receiver + ", msg_title=" + msg_title
				+ ", msg_txt=" + msg_txt + ", msg_date=" + msg_date + "]";
	}

	public int getMsg_no() {
		return msg_no;
	}

	public void setMsg_no(int msg_no) {
		this.msg_no = msg_no;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getMsg_title() {
		return msg_title;
	}

	public void setMsg_title(String msg_title) {
		this.msg_title = msg_title;
	}

	public String getMsg_txt() {
		return msg_txt;
	}

	public void setMsg_txt(String msg_txt) {
		this.msg_txt = msg_txt;
	}

	public Date getMsg_date() {
		return msg_date;
	}

	public void setMsg_date(Date msg_date) {
		this.msg_date = msg_date;
	}

}
