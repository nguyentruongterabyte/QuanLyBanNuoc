package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="NHANVIEN")
public class StaffEntity {
	@Id
	@Column(name="MaNV")
	private String id;
	
	@Column(name="HoTen")
	private String fullname;
	
	@Column(name="SDT")
	private String phone;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="DiaChi")
	private String address;
	
	@Column(name="GioiTinh")
	private String gender;
	
	@Column(name="MatKhau")
	private String password;
	
	@ManyToOne
	@JoinColumn(name="MaBP")
	private DepartmentEntity department;
	
	@OneToMany(mappedBy = "pStaff", fetch = FetchType.EAGER)
	private Collection<PurchaseOrderEntity> purchaseOrders;
	

	public StaffEntity() {
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public DepartmentEntity getDepartment() {
		return department;
	}

	public void setDepartment(DepartmentEntity department) {
		this.department = department;
	}

	public Collection<PurchaseOrderEntity> getPurchaseOrders() {
		return purchaseOrders;
	}

	public void setPurchaseOrders(Collection<PurchaseOrderEntity> purchaseOrders) {
		this.purchaseOrders = purchaseOrders;
	}
	
	
}
