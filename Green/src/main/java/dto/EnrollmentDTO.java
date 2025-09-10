package dto;

public class EnrollmentDTO {
	private int en_no;
	private int cs_id;
	private int std_no;
	private int score;
	private String grade;
	public int getEn_no() {
		return en_no;
	}
	public void setEn_no(int en_no) {
		this.en_no = en_no;
	}
	public int getCs_id() {
		return cs_id;
	}
	public void setCs_id(int cs_id) {
		this.cs_id = cs_id;
	}
	public int getStd_no() {
		return std_no;
	}
	public void setStd_no(int std_no) {
		this.std_no = std_no;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "EnrollmentDTO [en_no=" + en_no + ", cs_id=" + cs_id + ", std_no=" + std_no + ", score=" + score
				+ ", grade=" + grade + "]";
	}
	

}
