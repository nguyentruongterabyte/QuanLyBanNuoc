package poly.entity;

import java.sql.Timestamp;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="DONDATHANG")
public class OrderFormEntity {
	@Id
	@Column(name="MaDDH")
	private String id;
	
	@Column(name="NgayDat")
	private Timestamp date;
	
	@OneToMany(mappedBy = "id.orderForm", fetch = FetchType.EAGER)
	private Collection<OrderFormDetailEntity> orderForms;
	public OrderFormEntity() {
		super();
		// TODO Auto-generated constructor stub
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
	public Collection<OrderFormDetailEntity> getOrderForms() {
		return orderForms;
	}
	public void setOrderForms(Collection<OrderFormDetailEntity> orderForms) {
		this.orderForms = orderForms;
	}

	
}
