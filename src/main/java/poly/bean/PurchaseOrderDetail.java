package poly.bean;


public class PurchaseOrderDetail {
	private int quantity;
	
	public PurchaseOrderDetail(int quantity) {
		super();
		this.quantity = quantity;
	}

	public PurchaseOrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
