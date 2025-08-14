package dto;

public class TransactionDTO {
	
	private int t_no;
	private String a_no;
	private String t__dist;
	private String t_amount;
	private String t_datetime;
	
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getA_no() {
		return a_no;
	}
	public void setA_no(String a_no) {
		this.a_no = a_no;
	}
	public String getT__dist() {
		return t__dist;
	}
	public void setT__dist(String t__dist) {
		this.t__dist = t__dist;
	}
	public String getT_amount() {
		return t_amount;
	}
	public void setT_amount(String t_amount) {
		this.t_amount = t_amount;
	}
	public String getT_datetime() {
		return t_datetime;
	}
	public void setT_datetime(String t_datetime) {
		this.t_datetime = t_datetime;
	}
	@Override
	public String toString() {
		return "TransactionDTO [t_no=" + t_no + ", a_no=" + a_no + ", t__dist=" + t__dist + ", t_amount=" + t_amount
				+ ", t_datetime=" + t_datetime + "]";
	}
	
	

}
