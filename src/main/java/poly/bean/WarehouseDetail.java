package poly.bean;

public class WarehouseDetail {
	private int currentQuantity;
	private int limitQuantity;
	public WarehouseDetail(int currentQuantity, int limitQuantity) {
		super();
		this.currentQuantity = currentQuantity;
		this.limitQuantity = limitQuantity;
	}
	public WarehouseDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCurrentQuantity() {
		return currentQuantity;
	}
	
	public void setCurrentQuantity(int currentQuantity) {
		this.currentQuantity = currentQuantity;
	}
	public int getLimitQuantity() {
		return limitQuantity;
	}
	public void setLimitQuantity(int limitQuantity) {
		this.limitQuantity = limitQuantity;
	}
	
}
