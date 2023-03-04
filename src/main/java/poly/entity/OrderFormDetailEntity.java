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
@Table(name="CT_DDH")//Chi tiết đơn đặt hàng
public class OrderFormDetailEntity {
	// Tạo khóa tổ hợp từ khóa ngoại
	@Embeddable
	public class OrderFormDetailId implements Serializable {

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		
		@ManyToOne
		@JoinColumn(name="MaDDH")
		private OrderFormEntity orderForm;
		
		@ManyToOne
		@JoinColumn(name="MaMH")
		private ProductEntity orderProduct;

		public OrderFormDetailId() {
			super();
			// TODO Auto-generated constructor stub
		}

		public OrderFormDetailId(OrderFormEntity orderForm, ProductEntity orderProduct) {
			super();
			this.orderForm = orderForm;
			this.orderProduct = orderProduct;
		}

		public OrderFormEntity getOrderForm() {
			return orderForm;
		}

		public void setOrderForm(OrderFormEntity orderForm) {
			this.orderForm = orderForm;
		}

		public ProductEntity getOrderProduct() {
			return orderProduct;
		}

		public void setOrderProduct(ProductEntity orderProduct) {
			this.orderProduct = orderProduct;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
	}
	
	@EmbeddedId
	private OrderFormDetailId id;
	
	@Column(name="SoLuong")
	private int quantity;

	public OrderFormDetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderFormDetailEntity(OrderFormDetailId id, int quantity) {
		super();
		this.id = id;
		this.quantity = quantity;
	}

	public OrderFormDetailId getId() {
		return id;
	}

	public void setId(OrderFormDetailId id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
