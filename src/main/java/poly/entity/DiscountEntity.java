package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="CHIETKHAU")
public class DiscountEntity {
	
	@Id
	@Column(name = "MaChietKhau")
	private String id;
	@Column(name = "PTChietKhau")
	private int percent;
	public DiscountEntity(String id, int percent) {
		super();
		this.id = id;
		this.percent = percent;
	}
	
	@OneToMany(mappedBy = "discount", fetch = FetchType.EAGER)
	private Collection<InvoiceEntity> invoices;
	
	public DiscountEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}

	public Collection<InvoiceEntity> getInvoices() {
		return invoices;
	}
	public void setInvoices(Collection<InvoiceEntity> invoices) {
		this.invoices = invoices;
	}

}
