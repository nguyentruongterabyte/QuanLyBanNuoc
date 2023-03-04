package poly.bean;

public class Discount {
	private String id;
	private Double percent;
	public Discount(String id, Double percent) {
		super();
		this.id = id;
		this.percent = percent;
	}
	public Discount() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Double getPercent() {
		return percent;
	}
	public void setPercent(Double percent) {
		this.percent = percent;
	}
	
	
}
