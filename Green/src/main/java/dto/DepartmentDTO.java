package dto;

public class DepartmentDTO {
	private int dep_no;
	private String college;
	private String dep_name;
	private String dep_eng_name;
	private String dep_est_date;
	private String dep_king;
	private String dep_hp;
	private String dep_office;
	
	
	/* 학과 목록용 추가 필드 */
	private int pro_num;
	private int std_num;
	private int cs_num;
	
	
	public int getCs_num() {
		return cs_num;
	}
	public void setCs_num(int cs_num) {
		this.cs_num = cs_num;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public int getStd_num() {
		return std_num;
	}
	public void setStd_num(int std_num) {
		this.std_num = std_num;
	}
	
	
	public int getDep_no() {
		return dep_no;
	}
	public void setDep_no(int dep_no) {
		this.dep_no = dep_no;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getDep_name() {
		return dep_name;
	}
	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}
	public String getDep_eng_name() {
		return dep_eng_name;
	}
	public void setDep_eng_name(String dep_eng_name) {
		this.dep_eng_name = dep_eng_name;
	}
	public String getDep_est_date() {
		return dep_est_date;
	}
	public void setDep_est_date(String dep_est_date) {
		this.dep_est_date = dep_est_date;
	}
	public String getDep_king() {
		return dep_king;
	}
	public void setDep_king(String dep_king) {
		this.dep_king = dep_king;
	}
	public String getDep_hp() {
		return dep_hp;
	}
	public void setDep_hp(String dep_hp) {
		this.dep_hp = dep_hp;
	}
	public String getDep_office() {
		return dep_office;
	}
	public void setDep_office(String dep_office) {
		this.dep_office = dep_office;
	}
	@Override
	public String toString() {
		return "DepartmentDTO [dep_no=" + dep_no + ", college=" + college + ", dep_name=" + dep_name + ", dep_eng_name="
				+ dep_eng_name + ", dep_est_date=" + dep_est_date + ", dep_king=" + dep_king + ", dep_hp=" + dep_hp
				+ ", dep_office=" + dep_office + "]";
	}
	
	
}
