package poly.bean;

public class Product {
	private String id;
	private String name;
	private Double retailPrice;//Giá bán ra
	private Double purchasePrice; //Giá mua vào
	private String volume; // Thể tích
	private String describe; // Mô tả
	private String barCode; // Mã vạch
	private String photo;
	
	public Product() {
		super();
	}

	
	public Product(String id, String name, Double retailPrice, Double purchasePrice, String volume, String describe,
			String barCode, String photo) {
		super();
		this.id = id;
		this.name = name;
		this.retailPrice = retailPrice;
		this.purchasePrice = purchasePrice;
		this.volume = volume;
		this.describe = describe;
		this.barCode = barCode;
		this.photo = photo;
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
	
	
}
