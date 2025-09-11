package dto;

public class ProfessorDTO {
	
	private int pro_no;
	private String pro_jumin;
	private String pro_name;
	private String pro_eng_name;
	private String pro_gen;
	private String pro_nation;
	private String pro_hp;
	private String pro_email;
	private String pro_addr;
	private String pro_univ;
	private String pro_grad_date;
	private String pro_degree;
	private String pro_appint_date;
	private String pro_position;
	private String pro_status;
	private int pro_seq;
	
	private int dep_no;
	
	
	// 추가 필드
	private String dep_name;
	
	
	
	public String getDep_name() {
		return dep_name;
	}

	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}

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

	public String getPro_jumin() {
		return pro_jumin;
	}

	public void setPro_jumin(String pro_jumin) {
		this.pro_jumin = pro_jumin;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_eng_name() {
		return pro_eng_name;
	}

	public void setPro_eng_name(String pro_eng_name) {
		this.pro_eng_name = pro_eng_name;
	}

	public String getPro_gen() {
		return pro_gen;
	}

	public void setPro_gen(String pro_gen) {
		this.pro_gen = pro_gen;
	}

	public String getPro_nation() {
		return pro_nation;
	}

	public void setPro_nation(String pro_nation) {
		this.pro_nation = pro_nation;
	}

	public String getPro_hp() {
		return pro_hp;
	}

	public void setPro_hp(String pro_hp) {
		this.pro_hp = pro_hp;
	}

	public String getPro_email() {
		return pro_email;
	}

	public void setPro_email(String pro_email) {
		this.pro_email = pro_email;
	}

	public String getPro_addr() {
		return pro_addr;
	}

	public void setPro_addr(String pro_addr) {
		this.pro_addr = pro_addr;
	}

	public String getPro_univ() {
		return pro_univ;
	}

	public void setPro_univ(String pro_univ) {
		this.pro_univ = pro_univ;
	}

	public String getPro_grad_date() {
		return pro_grad_date;
	}

	public void setPro_grad_date(String pro_grad_date) {
		this.pro_grad_date = pro_grad_date;
	}

	public String getPro_degree() {
		return pro_degree;
	}

	public void setPro_degree(String pro_degree) {
		this.pro_degree = pro_degree;
	}

	public String getPro_appint_date() {
		return pro_appint_date;
	}

	public void setPro_appint_date(String pro_appint_date) {
		this.pro_appint_date = pro_appint_date;
	}

	public String getPro_position() {
		return pro_position;
	}

	public void setPro_position(String pro_position) {
		this.pro_position = pro_position;
	}

	public String getPro_status() {
		return pro_status;
	}

	public void setPro_status(String pro_status) {
		this.pro_status = pro_status;
	}

	public int getPro_seq() {
		return pro_seq;
	}

	public void setPro_seq(int pro_seq) {
		this.pro_seq = pro_seq;
	}

	@Override
	public String toString() {
		return "ProfessorDTO [pro_no=" + pro_no + ", pro_jumin=" + pro_jumin + ", pro_name=" + pro_name
				+ ", pro_eng_name=" + pro_eng_name + ", pro_gen=" + pro_gen + ", pro_nation=" + pro_nation + ", pro_hp="
				+ pro_hp + ", pro_email=" + pro_email + ", pro_addr=" + pro_addr + ", pro_univ=" + pro_univ
				+ ", pro_grad_date=" + pro_grad_date + ", pro_degree=" + pro_degree + ", pro_appint_date="
				+ pro_appint_date + ", pro_position=" + pro_position + ", pro_status=" + pro_status + ", pro_seq="
				+ pro_seq + "]";
	}
	
	
	
	

}
