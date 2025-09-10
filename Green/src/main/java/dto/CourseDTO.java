package dto;

public class CourseDTO {
	
	private long cs_id;
	private int dep_no;
	private int cs_grade;
	private int cs_credit;
	private String cs_dist;
	private int pro_no;
	private String cs_name;
	private String cs_info;
	private int cs_year;
	private int cs_sem;
	private String cs_time;
	private String cs_weekday;
	private String cs_eval;
	private String cs_book;
	private String cs_room;
	private int cs_max;
	private int cs_seq;
	
	/* 추가 필드 */
	private String pro_name;
	private String dep_name;
	private int cs_std_now;	// 현재 수강인원
	private int en_no;
	
	public int getCs_std_now() {
		return cs_std_now;
	}
	public void setCs_std_now(int cs_std_now) {
		this.cs_std_now = cs_std_now;
	}
	public long getCs_id() {
		return cs_id;
	}
	public void setCs_id(long cs_id) {
		this.cs_id = cs_id;
	}
	public int getDep_no() {
		return dep_no;
	}
	public void setDep_no(int dep_no) {
		this.dep_no = dep_no;
	}
	public int getCs_grade() {
		return cs_grade;
	}
	public void setCs_grade(int cs_grade) {
		this.cs_grade = cs_grade;
	}
	public int getCs_credit() {
		return cs_credit;
	}
	public void setCs_credit(int cs_credit) {
		this.cs_credit = cs_credit;
	}
	public String getCs_dist() {
		return cs_dist;
	}
	public void setCs_dist(String cs_dist) {
		this.cs_dist = cs_dist;
	}
	public int getPro_no() {
		return pro_no;
	}
	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}
	public String getCs_name() {
		return cs_name;
	}
	public void setCs_name(String cs_name) {
		this.cs_name = cs_name;
	}
	public String getCs_info() {
		return cs_info;
	}
	public void setCs_info(String cs_info) {
		this.cs_info = cs_info;
	}
	public int getCs_year() {
		return cs_year;
	}
	public void setCs_year(int cs_year) {
		this.cs_year = cs_year;
	}
	public int getCs_sem() {
		return cs_sem;
	}
	public void setCs_sem(int cs_sem) {
		this.cs_sem = cs_sem;
	}
	public String getCs_time() {
		return cs_time;
	}
	public void setCs_time(String cs_time) {
		this.cs_time = cs_time;
	}
	public String getCs_weekday() {
		return cs_weekday;
	}
	public void setCs_weekday(String cs_weekday) {
		this.cs_weekday = cs_weekday;
	}
	public String getCs_eval() {
		return cs_eval;
	}
	public void setCs_eval(String cs_eval) {
		this.cs_eval = cs_eval;
	}
	public String getCs_book() {
		return cs_book;
	}
	public void setCs_book(String cs_book) {
		this.cs_book = cs_book;
	}
	public String getCs_room() {
		return cs_room;
	}
	public void setCs_room(String cs_room) {
		this.cs_room = cs_room;
	}
	public int getCs_max() {
		return cs_max;
	}
	public void setCs_max(int cs_max) {
		this.cs_max = cs_max;
	}
	public int getCs_seq() {
		return cs_seq;
	}
	public void setCs_seq(int cs_seq) {
		this.cs_seq = cs_seq;
	}
	
	/* 추가 */
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getDep_name() {
		return dep_name;
	}
	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}	
	
	public int getEn_no() {
		return en_no;
	}
	public void setEn_no(int en_no) {
		this.en_no = en_no;
	}
	
	@Override
	public String toString() {
		return "CourseDTO [cs_id=" + cs_id + ", dep_no=" + dep_no + ", cs_grade=" + cs_grade + ", cs_credit="
				+ cs_credit + ", cs_dist=" + cs_dist + ", pro_no=" + pro_no + ", cs_name=" + cs_name + ", cs_info="
				+ cs_info + ", cs_year=" + cs_year + ", cs_sem=" + cs_sem + ", cs_time=" + cs_time + ", cs_weekday="
				+ cs_weekday + ", cs_eval=" + cs_eval + ", cs_book=" + cs_book + ", cs_room=" + cs_room + ", cs_max="
				+ cs_max + ", cs_seq=" + cs_seq + "]";
	}	
}
