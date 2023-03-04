package poly.bean;

public class Custommer {
	private String id;
	private String fullname;
	private String phone;
	private String email;
	private String address;
	private String gender;
	private int GPA; // Điểm tích lũy của khách hàng
	
	
	public Custommer(String id, String fullname, String phone, String email, String address, String gender, int gPA) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.gender = gender;
		GPA = gPA;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getGPA() {
		return GPA;
	}
	public void setGPA(int gPA) {
		GPA = gPA;
	}
	
	
}
