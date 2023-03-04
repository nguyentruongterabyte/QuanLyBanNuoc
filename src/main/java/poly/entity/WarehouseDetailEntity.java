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
@Table(name="CT_KHOHANG")
public class WarehouseDetailEntity {
	
	// Tạo khóa tổ hợp
	@Embeddable
	public class WarhouseDetailId implements Serializable {

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		
		@ManyToOne
		@JoinColumn(name="MaKho")
		private WarehouseEntity warehouse;
		
		@ManyToOne
		@JoinColumn(name="MaMH")
		private ProductEntity warehouseProduct;

		public WarhouseDetailId() {
			super();
			// TODO Auto-generated constructor stub
		}

		public WarhouseDetailId(WarehouseEntity warehouse, ProductEntity warehouseProduct) {
			super();
			this.warehouse = warehouse;
			this.warehouseProduct = warehouseProduct;
		}

		public WarehouseEntity getWarehouse() {
			return warehouse;
		}

		public void setWarehouse(WarehouseEntity warehouse) {
			this.warehouse = warehouse;
		}

		public ProductEntity getWarehouseProduct() {
			return warehouseProduct;
		}

		public void setWarehouseProduct(ProductEntity warehouseProduct) {
			this.warehouseProduct = warehouseProduct;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
	}
	
	@EmbeddedId
	private WarhouseDetailId id;
	
	@Column(name="SoLuongHienTai")
	private int currentQuantity;
	
	@Column(name="SoLuongToiDa")
	private int limitQuantity;

}
