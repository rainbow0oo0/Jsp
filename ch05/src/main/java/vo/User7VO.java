package vo;

public class User7VO {
	
	private String ID;
	private String name;
	private int age;
	private String email;
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "User6VO [ID=" + ID + ", name=" + name + ", age=" + age + ", email=" + email + "]";
	}
	
	
	

}
