package com.software.core.entity;

import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Good entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "good")

public class Good{

	// Fields

	private Integer goodId;
	private String goodName;
	private Integer goodStock;
	private double goodPrice;
	private double goodDicprice;
	private Date goodBirth;
	private Integer goodProtect;
	private String goodPicurl;
	private String goodDescr;

	// Constructors

	/** default constructor */
	public Good() {
	}

	/** minimal constructor */
	public Good(String goodName, Integer goodStock, double goodPrice, Date goodBirth, Integer goodProtect,
			String goodPicurl) {
		this.goodName = goodName;
		this.goodStock = goodStock;
		this.goodPrice = goodPrice;
		this.goodBirth = goodBirth;
		this.goodProtect = goodProtect;
		this.goodPicurl = goodPicurl;
	}

	/** full constructor */
	public Good(String goodName, Integer goodStock, double goodPrice, double goodDicprice, Date goodBirth,
			Integer goodProtect, String goodPicurl, String goodDescr) {
		this.goodName = goodName;
		this.goodStock = goodStock;
		this.goodPrice = goodPrice;
		this.goodDicprice = goodDicprice;
		this.goodBirth = goodBirth;
		this.goodProtect = goodProtect;
		this.goodPicurl = goodPicurl;
		this.goodDescr = goodDescr;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "good_ID", unique = true, nullable = false)

	public Integer getGoodId() {
		return this.goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	@Column(name = "good_name", nullable = false, length = 20)

	public String getGoodName() {
		return this.goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	@Column(name = "good_stock", nullable = false)

	public Integer getGoodStock() {
		return this.goodStock;
	}

	public void setGoodStock(Integer goodStock) {
		this.goodStock = goodStock;
	}

	@Column(name = "good_price", nullable = false, precision = 10)

	public double getGoodPrice() {
		return this.goodPrice;
	}

	public void setGoodPrice(double goodPrice) {
		this.goodPrice = goodPrice;
	}

	@Column(name = "good_dicprice", precision = 10)

	public double getGoodDicprice() {
		return this.goodDicprice;
	}

	public void setGoodDicprice(double goodDicprice) {
		this.goodDicprice = goodDicprice;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "good_birth", nullable = false, length = 10)

	public Date getGoodBirth() {
		return this.goodBirth;
	}

	public void setGoodBirth(Date goodBirth) {
		this.goodBirth = goodBirth;
	}

	@Column(name = "good_protect", nullable = false)

	public Integer getGoodProtect() {
		return this.goodProtect;
	}

	public void setGoodProtect(Integer goodProtect) {
		this.goodProtect = goodProtect;
	}

	@Column(name = "good_picurl", nullable = false)

	public String getGoodPicurl() {
		return this.goodPicurl;
	}

	public void setGoodPicurl(String goodPicurl) {
		this.goodPicurl = goodPicurl;
	}

	@Column(name = "good_descr", length = 65535)

	public String getGoodDescr() {
		return this.goodDescr;
	}

	public void setGoodDescr(String goodDescr) {
		this.goodDescr = goodDescr;
	}

}