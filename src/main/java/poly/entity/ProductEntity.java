package poly.entity;


import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="MATHANG")
public class ProductEntity {
	
	@Id
	@Column(name="MaMH")
	private String id;
	
	@Column(name="TenHH")
	private String name;
	
	@Column(name="GiaBan")
	private Double retailPrice;//Giá bán ra
	
	@Column(name="GiaNhap")
	private Double purchasePrice; //Giá  mua vào
	
	@Column(name="TheTich")
	private String volume; // Thể tích
	
	@Column(name="MoTa")
	private String describe; // Mô tả
	
	@Column(name="MaVach")
	private String barCode; // Mã vạch
	
	@Column(name="Photo")
	private String photo;
	
	@ManyToOne
	@JoinColumn(name="MaHangSX") // id này ở bên SQL
	private BrandEntity brand;
	
	@OneToMany(mappedBy = "id.purchaseProduct", fetch = FetchType.EAGER)
	private Collection<PurchaseOrderDetailEntity> purchaseProducts;

	@OneToMany(mappedBy = "id.orderProduct", fetch = FetchType.EAGER)
	private Collection<OrderFormDetailEntity> orderProducts;
	
	public ProductEntity() {
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
	public Double getRetailPrice() {
		return retailPrice;
	}
	public void setRetailPrice(Double retailPrice) {
		this.retailPrice = retailPrice;
	}
	public Double getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(Double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getBarCode() {
		return barCode;
	}
	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public BrandEntity getBrand() {
		return brand;
	}
	public void setBrand(BrandEntity brand) {
		this.brand = brand;
	}
	public Collection<PurchaseOrderDetailEntity> getPurchaseProducts() {
		return purchaseProducts;
	}
	public void setPurchaseProducts(Collection<PurchaseOrderDetailEntity> purchaseProducts) {
		this.purchaseProducts = purchaseProducts;
	}
	public Collection<OrderFormDetailEntity> getOrderProducts() {
		return orderProducts;
	}
	public void setOrderProducts(Collection<OrderFormDetailEntity> orderProducts) {
		this.orderProducts = orderProducts;
	}
	
	
	
}
