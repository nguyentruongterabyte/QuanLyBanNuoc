package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="HANGSX")
public class BrandEntity {
	@Id
	@Column(name="MaHangSX")
	private String id;
	
	@Column(name="TenHangSX")
	private String name;
	
	@OneToMany(mappedBy ="brand", fetch = FetchType.EAGER) //brand
	private Collection<ProductEntity> products;
	
	public BrandEntity() {
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
	public Collection<ProductEntity> getProducts() {
		return products;
	}
	public void setProducts(Collection<ProductEntity> products) {
		this.products = products;
	}
	
	
}
