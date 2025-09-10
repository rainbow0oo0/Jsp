package dto;

public class StudentDTO {
	
	private String std_no;
	private String std_jumin;
	private String std_name;
	private String std_eng_name;
	private String std_gen;
	private String std_nation;
	private String std_hp;
	private String std_email;
	private String std_addr;
	private int std_seq;
	private int std_ent;
	private int std_ent_grade;
	private int std_ent_sem;
	private String std_status;
	
	private int dep_no;
	private int pro_no;
	
	
	public int getDep_no() {
		return dep_no;
	}
	public void setDep_no(int dep_no) {
		this.dep_no = dep_no;
	}
	public int getPro_no() {
		return pro_no;
	}
	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}
	
	
	public String getStd_no() {
		return std_no;
	}
	public void setStd_no(String std_no) {
		this.std_no = std_no;
	}
	public String getStd_jumin() {
		return std_jumin;
	}
	public void setStd_jumin(String std_jumin) {
		this.std_jumin = std_jumin;
	}
	public String getStd_name() {
		return std_name;
	}
	public void setStd_name(String std_name) {
		this.std_name = std_name;
	}
	public String getStd_eng_name() {
		return std_eng_name;
	}
	public void setStd_eng_name(String std_eng_name) {
		this.std_eng_name = std_eng_name;
	}
	public String getStd_gen() {
		return std_gen;
	}
	public void setStd_gen(String std_gen) {
		this.std_gen = std_gen;
	}
	public String getStd_nation() {
		return std_nation;
	}
	public void setStd_nation(String std_nation) {
		this.std_nation = std_nation;
	}
	public String getStd_hp() {
		return std_hp;
	}
	public void setStd_hp(String std_hp) {
		this.std_hp = std_hp;
	}
	public String getStd_email() {
		return std_email;
	}
	public void setStd_email(String std_email) {
		this.std_email = std_email;
	}
	public String getStd_addr() {
		return std_addr;
	}
	public void setStd_addr(String std_addr) {
		this.std_addr = std_addr;
	}
	public int getStd_seq() {
		return std_seq;
	}
	public void setStd_seq(int std_seq) {
		this.std_seq = std_seq;
	}
	public int getStd_ent() {
		return std_ent;
	}
	public void setStd_ent(int std_ent) {
		this.std_ent = std_ent;
	}
	public int getStd_ent_grade() {
		return std_ent_grade;
	}
	public void setStd_ent_grade(int std_ent_grade) {
		this.std_ent_grade = std_ent_grade;
	}
	public int getStd_ent_sem() {
		return std_ent_sem;
	}
	public void setStd_ent_sem(int std_ent_sem) {
		this.std_ent_sem = std_ent_sem;
	}
	public String getStd_status() {
		return std_status;
	}
	public void setStd_status(String std_status) {
		this.std_status = std_status;
	}
	
	@Override
	public String toString() {
		return "StudentDTO [std_no=" + std_no + ", std_jumin=" + std_jumin + ", std_name=" + std_name
				+ ", std_eng_name=" + std_eng_name + ", std_gen=" + std_gen + ", std_nation=" + std_nation + ", std_hp="
				+ std_hp + ", std_email=" + std_email + ", std_addr=" + std_addr + ", std_seq=" + std_seq + ", std_ent="
				+ std_ent + ", std_ent_grade=" + std_ent_grade + ", std_ent_sem=" + std_ent_sem + ", std_status="
				+ std_status + "]";
	}

	
	
	
}
