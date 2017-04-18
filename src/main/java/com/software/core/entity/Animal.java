package com.software.core.entity;

import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Animal entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "animal")

public class Animal {

	// Fields

	private Integer animalId;
	private String breedName;
	private String animalSex;
	private Date animalBirth;
	private double animalPrice;
	private double animalDisprice;
	private String animalPicurl;
	private String animalDescr;

	// Constructors

	/** default constructor */
	public Animal() {
	}

	/** minimal constructor */
	public Animal(String breedName, String animalSex, Date animalBirth, double animalPrice, String animalPicurl) {
		this.breedName = breedName;
		this.animalSex = animalSex;
		this.animalBirth = animalBirth;
		this.animalPrice = animalPrice;
		this.animalPicurl = animalPicurl;
	}

	/** full constructor */
	public Animal(String breedName, String animalSex, Date animalBirth, double animalPrice, double animalDisprice,
			String animalPicurl, String animalDescr) {
		this.breedName = breedName;
		this.animalSex = animalSex;
		this.animalBirth = animalBirth;
		this.animalPrice = animalPrice;
		this.animalDisprice = animalDisprice;
		this.animalPicurl = animalPicurl;
		this.animalDescr = animalDescr;
	}
	@Override
	public String toString() {
		return "Animal [animalId=" + animalId + ", breedName=" + breedName + ", animalSex=" + animalSex
				+ ", animalBirth=" + animalBirth + ", animalPrice=" + animalPrice + ", animalDisprice=" + animalDisprice
				+ ", animalPicurl=" + animalPicurl + ", animalDescr=" + animalDescr + "]";
	}
	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "animal_ID", unique = true, nullable = false)

	public Integer getAnimalId() {
		return this.animalId;
	}

	public void setAnimalId(Integer animalId) {
		this.animalId = animalId;
	}

	@Column(name = "breed_name", nullable = false, length = 20)

	public String getBreedName() {
		return this.breedName;
	}

	public void setBreedName(String breedName) {
		this.breedName = breedName;
	}

	@Column(name = "animal_sex", nullable = false, length = 4)

	public String getAnimalSex() {
		return this.animalSex;
	}

	public void setAnimalSex(String animalSex) {
		this.animalSex = animalSex;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "animal_birth", nullable = false, length = 10)

	public Date getAnimalBirth() {
		return this.animalBirth;
	}

	public void setAnimalBirth(Date animalBirth) {
		this.animalBirth = animalBirth;
	}

	@Column(name = "animal_price", nullable = false, precision = 10)

	public double getAnimalPrice() {
		return this.animalPrice;
	}

	public void setAnimalPrice(double animalPrice) {
		this.animalPrice = animalPrice;
	}

	@Column(name = "animal_disprice", precision = 10)

	public double getAnimalDisprice() {
		return this.animalDisprice;
	}

	public void setAnimalDisprice(double animalDisprice) {
		this.animalDisprice = animalDisprice;
	}

	@Column(name = "animal_picurl", nullable = false)

	public String getAnimalPicurl() {
		return this.animalPicurl;
	}

	public void setAnimalPicurl(String animalPicurl) {
		this.animalPicurl = animalPicurl;
	}

	@Column(name = "animal_descr", length = 65535)

	public String getAnimalDescr() {
		return this.animalDescr;
	}

	public void setAnimalDescr(String animalDescr) {
		this.animalDescr = animalDescr;
	}

}