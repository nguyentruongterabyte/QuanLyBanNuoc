package poly.entity;

import java.sql.Timestamp;
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
@Table(name="HOADON")
public class InvoiceEntity {
	@Id
	@Column(name="MaDon")
	private String id;
	@Column(name="NgayLap")
	private Timestamp invoiceDate;
	@Column(name="TrangThai")
	private String status;

	@ManyToOne
	@JoinColumn(name="MaKH")
	private CustommerEntity customer;
	
	@ManyToOne
	@JoinColumn(name="MaChietKhau")
	private DiscountEntity discount;
	
	@ManyToOne
	@JoinColumn(name="MaNV")
	private StaffEntity staff;
	
	@OneToMany(mappedBy = "id.invoice", fetch = FetchType.EAGER)
	private Collection<InvoiceDetailEntity> invoices;

	public InvoiceEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InvoiceEntity(String id, Timestamp invoiceDate, String status, CustommerEntity customer,
			DiscountEntity discount, StaffEntity staff) {
		super();
		this.id = id;
		this.invoiceDate = invoiceDate;
		this.status = status;
		this.customer = customer;
		this.discount = discount;
		this.staff = staff;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getInvoiceDate() {
		return invoiceDate;
	}

	public void setInvoiceDate(Timestamp invoiceDate) {
		this.invoiceDate = invoiceDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public CustommerEntity getCustomer() {
		return customer;
	}

	public void setCustomer(CustommerEntity customer) {
		this.customer = customer;
	}

	public DiscountEntity getDiscount() {
		return discount;
	}

	public void setDiscount(DiscountEntity discount) {
		this.discount = discount;
	}

	public StaffEntity getStaff() {
		return staff;
	}

	public void setStaff(StaffEntity staff) {
		this.staff = staff;
	}
	
	
}
