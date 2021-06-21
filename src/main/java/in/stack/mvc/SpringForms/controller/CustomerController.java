package in.stack.mvc.SpringForms.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.stack.mvc.SpringForms.model.Customer;
import in.stack.mvc.SpringForms.model.Product;

@Controller
public class CustomerController {
	
	Set<Customer> customerSet = new HashSet<>();
	Set<Product> productSet = new HashSet<>();
	
	@GetMapping("/")
	public String homePage() {
		if(customerSet.isEmpty()) {
			customerSet.add(new Customer(001, "anil", "kumar", "anil@gmail.com", "a111"));
			customerSet.add(new Customer(002, "ajith", "kumar", "ajith@gmail.com", "a222"));
			customerSet.add(new Customer(003, "arun", "kumar", "arun@gmail.com", "a333"));
			customerSet.add(new Customer(004, "leju", "anil", "leju@gmail.com", "a444"));
		}
		if(productSet.isEmpty()) {
			productSet.add(new Product(400, "apple", 10, 50, LocalDateTime.of(2021, 5, 20, 10, 15)));
			productSet.add(new Product(401, "orange", 15, 60, LocalDateTime.of(2021, 4, 21, 7, 15)));
			productSet.add(new Product(402, "banana", 27, 35, LocalDateTime.of(2021, 5, 10, 6, 15)));
			productSet.add(new Product(403, "mango", 46, 100, LocalDateTime.of(2021, 3, 14, 8, 15)));
			productSet.add(new Product(404, "pinapple", 56, 150, LocalDateTime.of(2021, 2, 20, 4, 30)));
		}
		return "home";
	}
	
	@GetMapping("customerPage")
	public String customerPage() {
		return "customer";
	}
	
	@ModelAttribute("customer")
	public Customer setCustomerForm() {
		return new Customer();
		
	}
		
	@GetMapping("/register")
	public String showSignupform() {
		return "register_customer";
	}
	
	@GetMapping("/all_customer_details")
	public String viewAllCustomers(Model model) {
		model.addAttribute("customers", customerSet);
		return "viewAllCustomer";
	}
	
	@GetMapping("/productPage")
	public String productPage() {
		return "product";
	}
	@GetMapping("/add-product")
	public String createNewProducts() {
		return "new-product";
	}
	@ModelAttribute("product")
	public Product setNewProduct() {
		return new Product();
		
	}
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customerData, Model model) {
		Customer newCustomer = new Customer();
		newCustomer.setId(customerData.getId());
		newCustomer.setFirstname(customerData.getFirstname());
		newCustomer.setLastname(customerData.getLastname());
		newCustomer.setEmail(customerData.getEmail());
		newCustomer.setPassword(customerData.getPassword());
		customerSet.add(newCustomer);
		
		model.addAttribute("user", customerData);
		model.addAttribute("msg", "Registration Success!");
		
		return "registration-success";
	}
	
	@PostMapping("/addProduct")
	public String addProduct(@ModelAttribute("product") Product productData, Model model) {
		Product newProduct= new Product();
		newProduct.setProductId(productData.getProductId());
		newProduct.setProductName(productData.getProductName());
		newProduct.setPrice(productData.getPrice());
		newProduct.setQuantity(productData.getQuantity());
		newProduct.setCreateTime(LocalDateTime.now());
		productSet.add(newProduct);
		
		model.addAttribute("msg", "Product added Successfully!");
		
		return "add-prod-success";
	}
	
	
	@GetMapping("/all_products")
	public String viewAllProducts(Model model) {
		model.addAttribute("products", productSet);
		return "view-all-products";
	}

}
