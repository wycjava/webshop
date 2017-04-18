package com.software.core.entity;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "cart")

public class Cart {

	// Fields

	private Integer cartId;
	private String userId;
	private Integer animalId;
	private Integer goodId;
	private Integer cartNum;
	private double cartPrice;
	private double cartDisprice;
	private double cartTotle;

	// Constructors

	/** default constructor */
	public Cart() {
	}

	/** minimal constructor */
	public Cart(String userId) {
		this.userId = userId;
	}

	/** full constructor */
	public Cart(String userId, Integer animalId, Integer goodId, Integer cartNum, double cartPrice, double cartDisprice,
			double cartTotle) {
		this.userId = userId;
		this.animalId = animalId;
		this.goodId = goodId;
		this.cartNum = cartNum;
		this.cartPrice = cartPrice;
		this.cartDisprice = cartDisprice;
		this.cartTotle = cartTotle;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "cart_ID", unique = true, nullable = false)

	public Integer getCartId() {
		return this.cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	@Column(name = "user_ID", nullable = false, length = 16)

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Column(name = "animal_ID")

	public Integer getAnimalId() {
		return this.animalId;
	}

	public void setAnimalId(Integer animalId) {
		this.animalId = animalId;
	}

	@Column(name = "good_ID")

	public Integer getGoodId() {
		return this.goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	@Column(name = "cart_num")

	public Integer getCartNum() {
		return this.cartNum;
	}

	public void setCartNum(Integer cartNum) {
		this.cartNum = cartNum;
	}

	@Column(name = "cart_price", precision = 10)

	public double getCartPrice() {
		return this.cartPrice;
	}

	public void setCartPrice(double cartPrice) {
		this.cartPrice = cartPrice;
	}

	@Column(name = "cart_disprice", precision = 10)

	public double getCartDisprice() {
		return this.cartDisprice;
	}

	public void setCartDisprice(double cartDisprice) {
		this.cartDisprice = cartDisprice;
	}

	@Column(name = "cart_totle", precision = 15)

	public double getCartTotle() {
		return this.cartTotle;
	}

	public void setCartTotle(double cartTotle) {
		this.cartTotle = cartTotle;
	}

}