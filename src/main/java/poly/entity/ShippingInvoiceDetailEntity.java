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
@Table(name = "CT_DONXUATHANG")
public class ShippingInvoiceDetailEntity {
	//Tạo khóa tổ hợp từ khóa ngoại
	@Embeddable
	public class ShippingInvoiceDetailID implements Serializable {

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		
		@ManyToOne
		@JoinColumn(name="MaDonXH")
		private ShippingInvoiceEntity shippingInvoice;
		
		@ManyToOne
		@JoinColumn(name="MaMH")
		private ProductEntity shippingProduct;

		public ShippingInvoiceDetailID() {
			super();
			// TODO Auto-generated constructor stub
		}

		public ShippingInvoiceEntity getShippingInvoice() {
			return shippingInvoice;
		}

		public void setShippingInvoice(ShippingInvoiceEntity shippingInvoice) {
			this.shippingInvoice = shippingInvoice;
		}

		public ProductEntity getShippingProduct() {
			return shippingProduct;
		}

		public void setShippingProduct(ProductEntity shippingProduct) {
			this.shippingProduct = shippingProduct;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
	}
	
	@EmbeddedId
	private ShippingInvoiceDetailID id;
	
	@Column(name = "SoLuong")
	private int quantity;

	public ShippingInvoiceDetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShippingInvoiceDetailID getId() {
		return id;
	}

	public void setId(ShippingInvoiceDetailID id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
