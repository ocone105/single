package free.dto;

import java.sql.Date;

public class FreeCmtDTO {

	private int fr_cmt_no;
	private String fr_cmt_txt;
	private Date fr_cmt_date;
	private int fr_no;
	private String me_id;

	public FreeCmtDTO() {

	}

	// ´ñ±Û µî·Ï¿ë(·Î±×ÀÎ Àü)
	public FreeCmtDTO(String fr_cmt_txt, int fr_no) {
		super();
		this.fr_cmt_txt = fr_cmt_txt;
		this.fr_no = fr_no;
	}

	// ´ñ±Û ¸ñ·Ï¿ë
	public FreeCmtDTO(String fr_cmt_txt, Date fr_cmt_date, String me_id) {
		super();
		this.fr_cmt_txt = fr_cmt_txt;
		this.fr_cmt_date = fr_cmt_date;
		this.me_id = me_id;
	}
	
	// ´ñ±Û µî·Ï¿ë(origin)
	public FreeCmtDTO(String fr_cmt_txt, int fr_no, String me_id) {
		super();
		this.fr_cmt_txt = fr_cmt_txt;
		this.fr_no = fr_no;
		this.me_id = me_id;
	}
	


	public FreeCmtDTO(int fr_cmt_no, String fr_cmt_txt, Date fr_cmt_date, int fr_no, String me_id) {
		super();
		this.fr_cmt_no = fr_cmt_no;
		this.fr_cmt_txt = fr_cmt_txt;
		this.fr_cmt_date = fr_cmt_date;
		this.fr_no = fr_no;
		this.me_id = me_id;
	}

	@Override
	public String toString() {
		return "FreeCmtDTO [fr_cmt_no=" + fr_cmt_no + ", fr_cmt_txt=" + fr_cmt_txt + ", fr_cmt_date=" + fr_cmt_date
				+ ", fr_no=" + fr_no + ", me_id=" + me_id + "]";
	}

	public int getFr_cmt_no() {
		return fr_cmt_no;
	}

	public void setFr_cmt_no(int fr_cmt_no) {
		this.fr_cmt_no = fr_cmt_no;
	}

	public String getFr_cmt_txt() {
		return fr_cmt_txt;
	}

	public void setFr_cmt_txt(String fr_cmt_txt) {
		this.fr_cmt_txt = fr_cmt_txt;
	}

	public Date getFr_cmt_date() {
		return fr_cmt_date;
	}

	public void setFr_cmt_date(Date fr_cmt_date) {
		this.fr_cmt_date = fr_cmt_date;
	}

	public int getFr_no() {
		return fr_no;
	}

	public void setFr_no(int fr_no) {
		this.fr_no = fr_no;
	}

	public String getMe_id() {
		return me_id;
	}

	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}

}

/*
 * fr_cmt_no number, fr_cmt_txt varchar2(500), fr_cmt_date date, fr_no number,
 * me_id varchar2(30)
 */