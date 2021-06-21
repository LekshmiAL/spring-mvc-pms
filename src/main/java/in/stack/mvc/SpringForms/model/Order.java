package in.stack.mvc.SpringForms.model;

import java.time.LocalDateTime;
import java.util.List;

public class Order {
	private int orderId;
	private List<Product> productList;
	private double totalAmount;
	private LocalDateTime orderDate;
	
	
	public Order() {
	}

	public Order(int orderId, List<Product> productList, double totalAmount, LocalDateTime orderDate) {
		this.orderId = orderId;
		this.productList = productList;
		this.totalAmount = totalAmount;
		this.orderDate = orderDate;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public LocalDateTime getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", productList=" + productList + ", totalAmount=" + totalAmount
				+ ", orderDate=" + orderDate + "]";
	}
	
	
}
