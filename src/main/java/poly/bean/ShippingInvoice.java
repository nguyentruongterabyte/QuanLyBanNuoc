package poly.bean;

import java.sql.Timestamp;

public class ShippingInvoice {
	private String id;
	private Timestamp dateOfInvoice;//Ngày lập hóa đơn
	private String status;//Trạng thái
	private Timestamp shippingDate;//Ngày xuất hàng
	public ShippingInvoice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShippingInvoice(String id, Timestamp dateOfInvoice, String status, Timestamp shippingDate) {
		super();
		this.id = id;
		this.dateOfInvoice = dateOfInvoice;
		this.status = status;
		this.shippingDate = shippingDate;
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
	
	
}
