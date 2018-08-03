package member.dto;

import java.sql.Date;
public class MemberDTO {
	private String me_id;
	private String me_pwd;
	private String me_name;
	private Date me_birth;
	private String me_gender;
	private String me_phone;
	private String me_telnum;
	private String me_telchk;
	private String me_email;
	private String me_addr;
	private int me_point;
	private int me_points;
	private String me_grade;
	private String me_character;
	private String me_state;
	private String me_img;
	private String me_loc;
	private int me_black;
	
	public MemberDTO() {}

	//유저조회용
	public MemberDTO(String me_id, String me_pwd, String me_name, Date me_birth, String me_gender,String me_phone, String me_telnum,
			String me_telchk, String me_email, String me_addr, int me_point, int me_points, String me_grade,
			String me_character, String me_state, String me_img, String me_loc, int me_black) {
		super();
		this.me_id = me_id;
		this.me_pwd = me_pwd;
		this.me_name = me_name;
		this.me_birth = me_birth;
		this.me_gender = me_gender;
		this.me_phone = me_phone;
		this.me_telnum = me_telnum;
		this.me_telchk = me_telchk;
		this.me_email = me_email;
		this.me_addr = me_addr;
		this.me_point = me_point;
		this.me_points = me_points;
		this.me_grade = me_grade;
		this.me_character = me_character;
		this.me_state = me_state;
		this.me_img = me_img;
		this.me_loc = me_loc;
		this.me_black = me_black;
	}
	//회원가입용
	public MemberDTO(String me_id, String me_pwd, String me_name, Date me_birth, String me_gender, String me_phone, String me_telnum,
			String me_telchk, String me_email, String me_addr, String me_character, String me_img, String me_loc) {
		super();
		this.me_id = me_id;
		this.me_pwd = me_pwd;
		this.me_name = me_name;
		this.me_birth = me_birth;
		this.me_gender = me_gender;
		this.me_phone = me_phone;
		this.me_telnum = me_telnum;
		this.me_telchk = me_telchk;
		this.me_email = me_email;
		this.me_addr = me_addr;
		this.me_character = me_character;
		this.me_img = me_img;
		this.me_loc = me_loc;
	}

	//회원정보수정용
	public MemberDTO(String me_id, String me_pwd, String me_phone, String me_telnum, String me_telchk, String me_email,
			String me_addr, String me_character, String me_img) {
		super();
		this.me_id = me_id;
		this.me_pwd = me_pwd;
		this.me_phone = me_phone;
		this.me_telnum = me_telnum;
		this.me_telchk = me_telchk;
		this.me_email = me_email;
		this.me_addr = me_addr;
		this.me_character = me_character;
		this.me_img = me_img;
	}

	@Override
	public String toString() {
		return "MemberDTO [me_id=" + me_id + ", me_pwd=" + me_pwd + ", me_name=" + me_name + ", me_birth=" + me_birth
				+ ", me_gender=" + me_gender + ", me_phone=" + me_phone + ", me_telnum=" + me_telnum + ", me_telchk="
				+ me_telchk + ", me_email=" + me_email + ", me_addr=" + me_addr + ", me_point=" + me_point
				+ ", me_points=" + me_points + ", me_grade=" + me_grade + ", me_character=" + me_character
				+ ", me_state=" + me_state + ", me_img=" + me_img + ", me_loc=" + me_loc + ", me_black=" + me_black
				+ "]";
	}

	public String getMe_id() {
		return me_id;
	}

	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}

	public String getMe_pwd() {
		return me_pwd;
	}

	public void setMe_pwd(String me_pwd) {
		this.me_pwd = me_pwd;
	}

	public String getMe_name() {
		return me_name;
	}

	public void setMe_name(String me_name) {
		this.me_name = me_name;
	}

	public Date getMe_birth() {
		return me_birth;
	}

	public void setMe_birth(Date me_birth) {
		this.me_birth = me_birth;
	}

	public String getMe_gender() {
		return me_gender;
	}

	public void setMe_gender(String me_gender) {
		this.me_gender = me_gender;
	}

	public String getMe_phone() {
		return me_phone;
	}

	public void setMe_phone(String me_phone) {
		this.me_phone = me_phone;
	}

	public String getMe_telnum() {
		return me_telnum;
	}

	public void setMe_telnum(String me_telnum) {
		this.me_telnum = me_telnum;
	}

	public String getMe_telchk() {
		return me_telchk;
	}

	public void setMe_telchk(String me_telchk) {
		this.me_telchk = me_telchk;
	}

	public String getMe_email() {
		return me_email;
	}

	public void setMe_email(String me_email) {
		this.me_email = me_email;
	}

	public String getMe_addr() {
		return me_addr;
	}

	public void setMe_addr(String me_addr) {
		this.me_addr = me_addr;
	}

	public int getMe_point() {
		return me_point;
	}

	public void setMe_point(int me_point) {
		this.me_point = me_point;
	}

	public int getMe_points() {
		return me_points;
	}

	public void setMe_points(int me_points) {
		this.me_points = me_points;
	}

	public String getMe_grade() {
		return me_grade;
	}

	public void setMe_grade(String me_grade) {
		this.me_grade = me_grade;
	}

	public String getMe_character() {
		return me_character;
	}

	public void setMe_character(String me_character) {
		this.me_character = me_character;
	}

	public String getMe_state() {
		return me_state;
	}

	public void setMe_state(String me_state) {
		this.me_state = me_state;
	}

	public String getMe_img() {
		return me_img;
	}

	public void setMe_img(String me_img) {
		this.me_img = me_img;
	}

	public String getMe_loc() {
		return me_loc;
	}

	public void setMe_loc(String me_loc) {
		this.me_loc = me_loc;
	}

	public int getMe_black() {
		return me_black;
	}

	public void setMe_black(int me_black) {
		this.me_black = me_black;
	}

}
