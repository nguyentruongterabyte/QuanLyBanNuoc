package poly.bean;

import java.sql.Timestamp;

/**
 * @author Administrator
 *
 */
public class PurchaseOrder {
	private String id;
	private Timestamp invoiceDate;//Ngày lập
	private String status;//Trạng thái
	private Timestamp dateOfReceipt;//Ngày nhập hàng
	public PurchaseOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PurchaseOrder(String id, Timestamp invoiceDate, String status, Timestamp dateOfReceipt) {
		super();
		this.id = id;
		this.invoiceDate = invoiceDate;
		this.status = status;
		this.dateOfReceipt = dateOfReceipt;
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

	
}
