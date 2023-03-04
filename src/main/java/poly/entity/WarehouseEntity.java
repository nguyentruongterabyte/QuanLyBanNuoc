package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="KHO")
public class WarehouseEntity {

	@Id
	@Column(name="MaKho")
	private String id;
	
	@Column(name="TenKho")
	private String name;
	
	@Column(name="DiaChi")
	private String address;
	
	@Column(name="TienThueKho")
	private Double cost; // Tiền thuê kho
	
	@OneToMany(mappedBy = "id.warehouse", fetch = FetchType.EAGER)
	private Collection<WarehouseDetailEntity> warehouses;
	public WarehouseEntity() {
		super();
		// TODO Auto-generated constructor stub
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

	public Collection<WarehouseDetailEntity> getWarehouses() {
		return warehouses;
	}

	public void setWarehouses(Collection<WarehouseDetailEntity> warehouses) {
		this.warehouses = warehouses;
	}
	
	

}
