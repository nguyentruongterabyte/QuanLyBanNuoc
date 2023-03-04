package poly.bean;

import java.sql.Timestamp;

public class Invoice {
	private String id;
	private Timestamp invoiceDate;
	private String status;
	public Invoice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Invoice(String id, Timestamp invoiceDate, String status) {
		super();
		this.id = id;
		this.invoiceDate = invoiceDate;
		this.status = status;
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
	
}
