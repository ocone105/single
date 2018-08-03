package vs.dto;

import java.sql.Date;
public class VsDTO {
	
	int vs_no;			// 글번호
	String vs_title;	// 글제목
	String vs_optionA;	// A 선택
	String vs_optionB;	// B 선택
	String vs_txt;		// 글내용
	String me_id;		// 작성자ID
	int vs_hitsA;		// A 선택수
	int vs_hitsB;		// B 선택수
	Date vs_date;		// 작성일
	
	public VsDTO(){}

	// 삽입용
	public VsDTO(String vs_title, String vs_optionA, String vs_optionB, String vs_txt, String me_id) {
		super();
		this.vs_title = vs_title;
		this.vs_optionA = vs_optionA;
		this.vs_optionB = vs_optionB;
		this.vs_txt = vs_txt;
		this.me_id = me_id;
	}

	// 조회용
	public VsDTO(int vs_no, String vs_title, String vs_optionA, String vs_optionB, String vs_txt, String me_id,
			int vs_hitsA, int vs_hitsB, Date vs_date) {
		super();
		this.vs_no = vs_no;
		this.vs_title = vs_title;
		this.vs_optionA = vs_optionA;
		this.vs_optionB = vs_optionB;
		this.vs_txt = vs_txt;
		this.me_id = me_id;
		this.vs_hitsA = vs_hitsA;
		this.vs_hitsB = vs_hitsB;
		this.vs_date = vs_date;
	}

	@Override
	public String toString() {
		return "VsDTO [vs_no=" + vs_no + ", vs_title=" + vs_title + ", vs_optionA=" + vs_optionA + ", vs_optionB="
				+ vs_optionB + ", vs_txt=" + vs_txt + ", me_id=" + me_id + ", vs_hitsA=" + vs_hitsA + ", vs_hitsB="
				+ vs_hitsB + ", vs_date=" + vs_date + "]";
	}

	public int getVs_no() {
		return vs_no;
	}

	public void setVs_no(int vs_no) {
		this.vs_no = vs_no;
	}

	public String getVs_title() {
		return vs_title;
	}

	public void setVs_title(String vs_title) {
		this.vs_title = vs_title;
	}

	public String getVs_optionA() {
		return vs_optionA;
	}

	public void setVs_optionA(String vs_optionA) {
		this.vs_optionA = vs_optionA;
	}

	public String getVs_optionB() {
		return vs_optionB;
	}

	public void setVs_optionB(String vs_optionB) {
		this.vs_optionB = vs_optionB;
	}

	public String getVs_txt() {
		return vs_txt;
	}

	public void setVs_txt(String vs_txt) {
		this.vs_txt = vs_txt;
	}

	public String getMe_id() {
		return me_id;
	}

	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}

	public int getVs_hitsA() {
		return vs_hitsA;
	}

	public void setVs_hitsA(int vs_hitsA) {
		this.vs_hitsA = vs_hitsA;
	}

	public int getVs_hitsB() {
		return vs_hitsB;
	}

	public void setVs_hitsB(int vs_hitsB) {
		this.vs_hitsB = vs_hitsB;
	}

	public Date getVs_date() {
		return vs_date;
	}

	public void setVs_date(Date vs_date) {
		this.vs_date = vs_date;
	}

}