package vs.dto;

import java.sql.Date;

public class VsDTO {
	
	int ch_no;			// 글번호
	String ch_title;	// 글제목
	String ch_optionA;	// A 선택
	String ch_optionB;	// B 선택
	String ch_txt;		// 글내용
	String me_id;		// 작성자ID
	int ch_hits;		// 조회수
	Date ch_date;		// 작성일
	
	public VsDTO(){}

	// 삽입용
	public VsDTO(String ch_title, String ch_optionA, String ch_optionB, String ch_txt, String me_id) {
		super();
		this.ch_title = ch_title;
		this.ch_optionA = ch_optionA;
		this.ch_optionB = ch_optionB;
		this.ch_txt = ch_txt;
		this.me_id = me_id;
	}

	// 조회용
	public VsDTO(int ch_no, String ch_title, String ch_optionA, String ch_optionB, String ch_txt, String me_id,
			int ch_hits, Date ch_date) {
		super();
		this.ch_no = ch_no;
		this.ch_title = ch_title;
		this.ch_optionA = ch_optionA;
		this.ch_optionB = ch_optionB;
		this.ch_txt = ch_txt;
		this.me_id = me_id;
		this.ch_hits = ch_hits;
		this.ch_date = ch_date;
	}

	@Override
	public String toString() {
		return "VsDTO [ch_no=" + ch_no + ", ch_title=" + ch_title + ", ch_optionA=" + ch_optionA + ", ch_optionB="
				+ ch_optionB + ", ch_txt=" + ch_txt + ", me_id=" + me_id + ", ch_hits=" + ch_hits + ", ch_date="
				+ ch_date + "]";
	}

	public int getCh_no() {
		return ch_no;
	}

	public void setCh_no(int ch_no) {
		this.ch_no = ch_no;
	}

	public String getCh_title() {
		return ch_title;
	}

	public void setCh_title(String ch_title) {
		this.ch_title = ch_title;
	}

	public String getCh_optionA() {
		return ch_optionA;
	}

	public void setCh_optionA(String ch_optionA) {
		this.ch_optionA = ch_optionA;
	}

	public String getCh_optionB() {
		return ch_optionB;
	}

	public void setCh_optionB(String ch_optionB) {
		this.ch_optionB = ch_optionB;
	}

	public String getCh_txt() {
		return ch_txt;
	}

	public void setCh_txt(String ch_txt) {
		this.ch_txt = ch_txt;
	}

	public String getMe_id() {
		return me_id;
	}

	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}

	public int getCh_hits() {
		return ch_hits;
	}

	public void setCh_hits(int ch_hits) {
		this.ch_hits = ch_hits;
	}

	public Date getCh_date() {
		return ch_date;
	}

	public void setCh_date(Date ch_date) {
		this.ch_date = ch_date;
	}
	
	

}