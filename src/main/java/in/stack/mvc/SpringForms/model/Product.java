package in.stack.mvc.SpringForms.model;

import java.time.LocalDateTime;

public class Product {
	private int productId;
	private String productName;
	private int quantity;
	private float price;
	private LocalDateTime createTime;
	
	public Product() {
	}

	public Product(int productId, String productName, int quantity, float price, LocalDateTime createTime) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.quantity = quantity;
		this.price = price;
		this.createTime = createTime;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public LocalDateTime getCreateTime() {
		return createTime;
	}

	public void setCreateTime(LocalDateTime createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", quantity=" + quantity
				+ ", price=" + price + ", createTime=" + createTime + "]";
	}
	
	
}
