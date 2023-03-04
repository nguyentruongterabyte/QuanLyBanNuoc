
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
@Table(name = "DONXUATHANG")
public class ShippingInvoiceEntity {
	@Id
	@Column(name= "MaDonXH")
	private String id;
	@Column(name="NgayLap")
	private Timestamp dateOfInvoice;//Ngày lập hóa đơn
	@Column(name="TrangThai")
	private String status;//Trạng thái
	@Column(name="NgayXuatHang")
	private Timestamp shippingDate;//Ngày xuất hàng
	
	@ManyToOne
	@JoinColumn(name="MaNV")
	private StaffEntity staff;

	@ManyToOne
	@JoinColumn(name = "MaNCC")
	private ManufacturerEntity manufacturer;
	
	@OneToMany(mappedBy = "id.shippingInvoice", fetch = FetchType.EAGER)
	private Collection<ShippingInvoiceDetailEntity> shippingInvoices;
	
	public ShippingInvoiceEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getDateOfInvoice() {
		return dateOfInvoice;
	}

	public void setDateOfInvoice(Timestamp dateOfInvoice) {
		this.dateOfInvoice = dateOfInvoice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(Timestamp shippingDate) {
		this.shippingDate = shippingDate;
	}

	public StaffEntity getStaff() {
		return staff;
	}

	public void setStaff(StaffEntity staff) {
		this.staff = staff;
	}

	public ManufacturerEntity getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(ManufacturerEntity manufacturer) {
		this.manufacturer = manufacturer;
	}

	public Collection<ShippingInvoiceDetailEntity> getShippingInvoices() {
		return shippingInvoices;
	}

	public void setShippingInvoices(Collection<ShippingInvoiceDetailEntity> shippingInvoices) {
		this.shippingInvoices = shippingInvoices;
	}
	
	
	
}
