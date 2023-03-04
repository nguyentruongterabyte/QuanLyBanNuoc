package poly.bean;


public class Department {
	private String id;
	private String name;//Tên bộ phận
	private Double salary; // Tiền lương
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Department(String id, String name, Double salary) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
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
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	
	
}
