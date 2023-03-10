package poly.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CT_HOADON")

public class InvoiceDetailEntity {
//	Tạo khóa tổ hợp từ khóa ngoại

	
	@Embeddable
	public static class Pk implements Serializable {



		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		@ManyToOne
		@JoinColumn(name="MaDon")
		private InvoiceEntity invoice;
		
		@ManyToOne
		@JoinColumn(name="MaMH")
		private ProductEntity invoiceProduct;

		public InvoiceEntity getInvoice() {
			return invoice;
		}

		public void setInvoice(InvoiceEntity invoice) {
			this.invoice = invoice;
		}

		public ProductEntity getInvoiceProduct() {
			return invoiceProduct;
		}

		public void setInvoiceProduct(ProductEntity invoiceProduct) {
			this.invoiceProduct = invoiceProduct;
		}

		public Pk() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Pk(InvoiceEntity invoice, ProductEntity invoiceProduct) {
			super();
			this.invoice = invoice;
			this.invoiceProduct = invoiceProduct;
		}

		
	}
	@EmbeddedId
	private Pk id;
	
	@Column(name="SoLuong")
	private int quantity;

	public InvoiceDetailEntity() {
		super();
		this.id = new Pk();
	}

	public void setInvoiceEntity(InvoiceEntity invoice) {
		this.id.setInvoice(invoice);
	}
	
	public void setProductEntity(ProductEntity product) {
		this.id.setInvoiceProduct(product);
	}

	public Pk getId() {
		return id;
	}

	public void setId(Pk id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	

}
