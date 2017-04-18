package com.software.core.entity;

import javax.persistence.*;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "breed")

public class Breed {

	// Fields

	private Integer breedId;
	private String breedName;
	private String breedDescr;

	// Constructors

	/** default constructor */
	public Breed() {
	}

	/** minimal constructor */
	public Breed(String breedName) {
		this.breedName = breedName;
	}

	/** full constructor */
	public Breed(String breedName, String breedDescr) {
		this.breedName = breedName;
		this.breedDescr = breedDescr;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = AUTO)

	@Column(name = "breed_ID", unique = true, nullable = false)

	public Integer getBreedId() {
		return this.breedId;
	}

	public void setBreedId(Integer breedId) {
		this.breedId = breedId;
	}

	@Column(name = "breed_name", nullable = false, length = 20)

	public String getBreedName() {
		return this.breedName;
	}

	public void setBreedName(String breedName) {
		this.breedName = breedName;
	}

	@Column(name = "breed_descr", length = 65535)

	public String getBreedDescr() {
		return this.breedDescr;
	}

	public void setBreedDescr(String breedDescr) {
		this.breedDescr = breedDescr;
	}

}
