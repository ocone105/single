package mate.dto;

public class MateCmtDTO {
	private int mt_cmt_no;
	private String mt_cmt_txt;
	private String mt_cmt_date;
	private int mt_no;
	private String me_id;
	
	
	
	public MateCmtDTO() {
	}
	
	public MateCmtDTO(String mt_cmt_txt, int mt_no, String me_id) {
		this.mt_cmt_txt = mt_cmt_txt;
		this.mt_no = mt_no;
		this.me_id = me_id;
	}

	public MateCmtDTO(int mt_cmt_no, String mt_cmt_txt, String mt_cmt_date, int mt_no, String me_id) {
		this.mt_cmt_no = mt_cmt_no;
		this.mt_cmt_txt = mt_cmt_txt;
		this.mt_cmt_date = mt_cmt_date;
		this.mt_no = mt_no;
		this.me_id = me_id;
	}
	
	public int getMt_cmt_no() {
		return mt_cmt_no;
	}
	public void setMt_cmt_no(int mt_cmt_no) {
		this.mt_cmt_no = mt_cmt_no;
	}
	public String getMt_cmt_txt() {
		return mt_cmt_txt;
	}
	public void setMt_cmt_txt(String mt_cmt_txt) {
		this.mt_cmt_txt = mt_cmt_txt;
	}
	public String getMt_cmt_date() {
		return mt_cmt_date;
	}
	public void setMt_cmt_date(String mt_cmt_date) {
		this.mt_cmt_date = mt_cmt_date;
	}
	public int getMt_no() {
		return mt_no;
	}
	public void setMt_no(int mt_no) {
		this.mt_no = mt_no;
	}
	public String getMe_id() {
		return me_id;
	}
	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}
	@Override
	public String toString() {
		return "MateCmtDTO [mt_cmt_no=" + mt_cmt_no + ", mt_cmt_txt=" + mt_cmt_txt + ", mt_cmt_date=" + mt_cmt_date
				+ ", mt_no=" + mt_no + ", me_id=" + me_id + "]";
	}
	
	
	
	
/*	mt_cmt_no number,
	mt_cmt_txt varchar2(500),
	mt_cmt_date date,
	mt_no number,
	me_id varchar2(30));*/
	

}
