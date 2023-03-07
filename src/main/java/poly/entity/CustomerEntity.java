package poly.entity;

import java.sql.Date;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="KHACHHANG")
public class CustomerEntity {
	@Id
	@Column(name="MaKhachHang")
	private String id;
	@Column(name="HoTen")
	private String fullname;
	@Column(name = "SDT")
	private String phone;
	@Column(name = "Email")
	private String email;
	@Column(name="DiaChi")
	private String address;
	@Column(name="GioiTinh")
	private String gender;
	@Column(name="NgaySinh")
	private Date birthday;
	@Column(name="Diem")
	private int GPA; // Điểm tích lũy của khách hàng
	
	@OneToMany(mappedBy = "customer", fetch = FetchType.EAGER)
	private Collection<InvoiceEntity> invoices;
	

	public CustomerEntity() {
		super();
		// TODO Auto-generated constructor stub
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
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getGPA() {
		return GPA;
	}
	public void setGPA(int gPA) {
		GPA = gPA;
	}
	public Collection<InvoiceEntity> getInvoices() {
		return invoices;
	}
	public void setInvoices(Collection<InvoiceEntity> invoices) {
		this.invoices = invoices;
	}

}
