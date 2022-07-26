package com.wipro.springboot.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Table(name = "sales_log")
@Entity
public class SalesLog {
	private Integer id;
	
	@Column(name = "username")
	 @OneToOne
	private String username;
	
	@Column(name = "product_name")
	private String product_name;
	
	@Column(name = "product_price")
	private Integer product_price;
	
	@Column(name = "quantity")
	private Integer quantity;
	
	@Column(name = "date")
	private String date;
	
	
	public SalesLog() {
		super();
	}


	public SalesLog(Integer id, String username, String product_name, Integer product_price, Integer quantity,
			String date) {
		super();
		this.id = id;
		this.username = username;
		this.product_name = product_name;
		this.product_price = product_price;
		this.quantity = quantity;
		this.date = date;
	}

	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getusername() {
		return username;
	}


	public void setusername(String username) {
		this.username = username;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public Integer getProduct_price() {
		return product_price;
	}


	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	@Override
	public String toString() {
		return "SalesLog [id=" + id + ", username=" + username + ", product_name=" + product_name + ", product_price="
				+ product_price + ", quantity=" + quantity + ", date=" + date + "]";
	}
	
	
	
	
}
