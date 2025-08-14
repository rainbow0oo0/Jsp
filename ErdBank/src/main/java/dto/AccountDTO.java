package dto;

public class AccountDTO {
	
	private String a_no;
	private String a_dist;
	private String a_item_name;
	private int a_balance;
	private String a_open_date;
	
	public String getA_no() {
		return a_no;
	}
	public void setA_no(String a_no) {
		this.a_no = a_no;
	}
	public String getA_dist() {
		return a_dist;
	}
	public void setA_dist(String a_dist) {
		this.a_dist = a_dist;
	}
	public String getA_item_name() {
		return a_item_name;
	}
	public void setA_item_name(String a_item_name) {
		this.a_item_name = a_item_name;
	}
	public int getA_balance() {
		return a_balance;
	}
	public void setA_balance(int a_balance) {
		this.a_balance = a_balance;
	}
	public String getA_open_date() {
		return a_open_date;
	}
	public void setA_open_date(String a_open_date) {
		this.a_open_date = a_open_date;
	}
	@Override
	public String toString() {
		return "AccountDTO [a_no=" + a_no + ", a_dist=" + a_dist + ", a_item_name=" + a_item_name + ", a_balance="
				+ a_balance + ", a_open_date=" + a_open_date + "]";
	}
	
	

}
