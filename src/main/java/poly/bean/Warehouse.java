package poly.bean;

public class Warehouse {
	private String id;
	private String name;
	private String address;
	private Double cost; // Tiền thuê kho
	public Warehouse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Warehouse(String id, String name, String address, Double cost) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.cost = cost;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	
	
}
