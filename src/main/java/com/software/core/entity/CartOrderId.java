package com.software.core.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable

public class CartOrderId implements Serializable{

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer cartId;
	private Integer orderId;

	// Constructors

	/** default constructor */
	public CartOrderId() {
	}

	/** full constructor */
	public CartOrderId(Integer cartId, Integer orderId) {
		this.cartId = cartId;
		this.orderId = orderId;
	}

	// Property accessors

	@Column(name = "cart_ID", nullable = false)

	public Integer getCartId() {
		return this.cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	@Column(name = "order_ID", nullable = false)

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CartOrderId))
			return false;
		CartOrderId castOther = (CartOrderId) other;

		return ((this.getCartId() == castOther.getCartId()) || (this.getCartId() != null
				&& castOther.getCartId() != null && this.getCartId().equals(castOther.getCartId())))
				&& ((this.getOrderId() == castOther.getOrderId()) || (this.getOrderId() != null
						&& castOther.getOrderId() != null && this.getOrderId().equals(castOther.getOrderId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getCartId() == null ? 0 : this.getCartId().hashCode());
		result = 37 * result + (getOrderId() == null ? 0 : this.getOrderId().hashCode());
		return result;
	}

}
