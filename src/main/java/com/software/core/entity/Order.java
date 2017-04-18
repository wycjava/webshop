package com.software.core.entity;

import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "order")

public class Order {
	// Fields

	private Integer orderId;
	private double orderTotal;
	private String orderState;
	private Date orderTime;
	private Integer cartId;
	private String userId;
	private String orderLogisticcom;
	private String orderLogisticnum;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(double orderTotal, String orderState, Date orderTime, Integer cartId, String userId) {
		this.orderTotal = orderTotal;
		this.orderState = orderState;
		this.orderTime = orderTime;
		this.cartId = cartId;
		this.userId = userId;
	}

	/** full constructor */
	public Order(double orderTotal, String orderState, Date orderTime, Integer cartId, String userId,
			String orderLogisticcom, String orderLogisticnum) {
		this.orderTotal = orderTotal;
		this.orderState = orderState;
		this.orderTime = orderTime;
		this.cartId = cartId;
		this.userId = userId;
		this.orderLogisticcom = orderLogisticcom;
		this.orderLogisticnum = orderLogisticnum;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "order_ID", unique = true, nullable = false)

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	@Column(name = "order_total", nullable = false, precision = 20)

	public double getOrderTotal() {
		return this.orderTotal;
	}

	public void setOrderTotal(double orderTotal) {
		this.orderTotal = orderTotal;
	}

	@Column(name = "order_state", nullable = false, length = 10)

	public String getOrderState() {
		return this.orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	@Column(name = "order_time", nullable = false, length = 19)

	public Date getOrderTime() {
		return this.orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	@Column(name = "cart_ID", nullable = false)

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

	@Column(name = "order_logisticcom")

	public String getOrderLogisticcom() {
		return this.orderLogisticcom;
	}

	public void setOrderLogisticcom(String orderLogisticcom) {
		this.orderLogisticcom = orderLogisticcom;
	}

	@Column(name = "order_logisticnum", length = 10)

	public String getOrderLogisticnum() {
		return this.orderLogisticnum;
	}

	public void setOrderLogisticnum(String orderLogisticnum) {
		this.orderLogisticnum = orderLogisticnum;
	}

}