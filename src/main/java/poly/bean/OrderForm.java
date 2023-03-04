package poly.bean;

import java.sql.Timestamp;

public class OrderForm {
	private String id;
	private Timestamp date;
	public OrderForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public OrderForm(String id, Timestamp date) {
		super();
		this.id = id;
		this.date = date;
	}


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	
}
