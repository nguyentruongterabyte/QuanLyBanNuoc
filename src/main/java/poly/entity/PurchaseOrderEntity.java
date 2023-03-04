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
@Table(name="DONNHAPHANG")
public class PurchaseOrderEntity {
	@Id
	@Column(name="MaDonNH")
	private String id;
	@Column(name="NgayLap")
	private Timestamp invoiceDate;//Ngày lập
	@Column(name="TrangThai")
	private String status;//Trạng thái
	@Column(name="NgayNhapHang")
	private Timestamp dateOfReceipt;//Ngày nhập hàng
	
	@ManyToOne
	@JoinColumn(name="MaNV")
	private StaffEntity pStaff;
		
	@OneToMany(mappedBy = "id.purchaseOrder", fetch = FetchType.EAGER)
	private Collection<PurchaseOrderDetailEntity> purchaseOrderDetails;
	public PurchaseOrderEntity() {
		super();
		// TODO Auto-generated constructor stub
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

	public Timestamp getDateOfReceipt() {
		return dateOfReceipt;
	}

	public void setDateOfReceipt(Timestamp dateOfReceipt) {
		this.dateOfReceipt = dateOfReceipt;
	}

	public StaffEntity getpStaff() {
		return pStaff;
	}

	public void setpStaff(StaffEntity pStaff) {
		this.pStaff = pStaff;
	}

	public Collection<PurchaseOrderDetailEntity> getPurchaseOrderDetails() {
		return purchaseOrderDetails;
	}

	public void setPurchaseOrderDetails(Collection<PurchaseOrderDetailEntity> purchaseOrderDetails) {
		this.purchaseOrderDetails = purchaseOrderDetails;
	}

	
	
}
