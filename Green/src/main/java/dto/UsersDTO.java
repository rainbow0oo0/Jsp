package dto;

public class UsersDTO {
	
	private String us_id;
	private String us_pass;
	private String us_name;
	private String us_hp;
	private String us_email;
	private String us_addr;
	
	public String getUs_id() {
		return us_id;
	}
	public void setUs_id(String us_id) {
		this.us_id = us_id;
	}
	public String getUs_pass() {
		return us_pass;
	}
	public void setUs_pass(String us_pass) {
		this.us_pass = us_pass;
	}
	public String getUs_name() {
		return us_name;
	}
	public void setUs_name(String us_name) {
		this.us_name = us_name;
	}
	public String getUs_hp() {
		return us_hp;
	}
	public void setUs_hp(String us_hp) {
		this.us_hp = us_hp;
	}
	public String getUs_email() {
		return us_email;
	}
	public void setUs_email(String us_email) {
		this.us_email = us_email;
	}
	public String getUs_addr() {
		return us_addr;
	}
	public void setUs_addr(String us_addr) {
		this.us_addr = us_addr;
	}
	
	@Override
	public String toString() {
		return "UserDTO [us_id=" + us_id + ", us_pass=" + us_pass + ", us_name=" + us_name + ", us_hp=" + us_hp
				+ ", us_email=" + us_email + ", us_addr=" + us_addr + "]";
	}
	
	
	

}
