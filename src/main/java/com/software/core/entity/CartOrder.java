package com.software.core.entity;

import javax.persistence.*;

/**
 * CartOrder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "cart_order")

public class CartOrder{

	// Fields

	private CartOrderId id;

	// Constructors

	/** default constructor */
	public CartOrder() {
	}

	/** full constructor */
	public CartOrder(CartOrderId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "cartId", column = @Column(name = "cart_ID", nullable = false) ),
			@AttributeOverride(name = "orderId", column = @Column(name = "order_ID", nullable = false) ) })

	public CartOrderId getId() {
		return this.id;
	}

	public void setId(CartOrderId id) {
		this.id = id;
	}

}