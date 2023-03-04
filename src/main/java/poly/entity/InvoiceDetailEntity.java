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
	public class InvoiceDetailId implements Serializable {

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

		public InvoiceDetailId() {
			super();
			// TODO Auto-generated constructor stub
		}

		
		
		public InvoiceEntity getInvoice() {
			return invoice;
		}



		public void setInvoice(InvoiceEntity invoice) {
			this.invoice = invoice;
		}




		public InvoiceDetailId(InvoiceEntity invoice, ProductEntity invoiceProduct) {
			super();
			this.invoice = invoice;
			this.invoiceProduct = invoiceProduct;
		}

		
		public ProductEntity getInvoiceProduct() {
			return invoiceProduct;
		}



		public void setInvoiceProduct(ProductEntity invoiceProduct) {
			this.invoiceProduct = invoiceProduct;
		}



		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
		
	}
	@EmbeddedId
	private InvoiceDetailId id;
	
	@Column(name="SoLuong")
	private int quatity;

	public InvoiceDetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InvoiceDetailEntity(InvoiceDetailId id, int quatity) {
		super();
		this.id = id;
		this.quatity = quatity;
	}

	public InvoiceDetailId getId() {
		return id;
	}

	public void setId(InvoiceDetailId id) {
		this.id = id;
	}

	public int getQuatity() {
		return quatity;
	}

	public void setQuatity(int quatity) {
		this.quatity = quatity;
	}
	
	
}
