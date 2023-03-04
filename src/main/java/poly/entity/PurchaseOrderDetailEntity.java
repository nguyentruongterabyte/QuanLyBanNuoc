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
@Table(name="CT_DONNHAPHANG")
public class PurchaseOrderDetailEntity {
	
	// Tạo khóa tổ hợp từ khóa ngoại
	@Embeddable
	public class PurchaseOrderDetailId implements Serializable {

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		@ManyToOne
	    @JoinColumn(name="MaMH")
	    private ProductEntity purchaseProduct;
	    
	    @ManyToOne
	    @JoinColumn(name="MaDonNH")
	    private PurchaseOrderEntity purchaseOrder;
	    
	    public PurchaseOrderDetailId() {
	        super();
	    }

		public PurchaseOrderDetailId(ProductEntity purchaseProduct, PurchaseOrderEntity purchaseOrder) {
			super();
			this.purchaseProduct = purchaseProduct;
			this.purchaseOrder = purchaseOrder;
		}

		public ProductEntity getPurchaseProduct() {
			return purchaseProduct;
		}

		public void setPurchaseProduct(ProductEntity purchaseProduct) {
			this.purchaseProduct = purchaseProduct;
		}

		public PurchaseOrderEntity getPurchaseOrder() {
			return purchaseOrder;
		}

		public void setPurchaseOrder(PurchaseOrderEntity purchaseOrder) {
			this.purchaseOrder = purchaseOrder;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}


	}
	
	@EmbeddedId
	private PurchaseOrderDetailId id;

	@Column(name="SoLuong")
	private int quantity;

	public PurchaseOrderDetailEntity() {
		super();
	}

	public PurchaseOrderDetailEntity(ProductEntity pProduct, PurchaseOrderEntity purchaseOrder, int quantity) {
		super();
		this.id = new PurchaseOrderDetailId(pProduct, purchaseOrder);
		this.quantity = quantity;
	}

	public PurchaseOrderDetailId getId() {
		return id;
	}

	public void setId(PurchaseOrderDetailId id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	

}

