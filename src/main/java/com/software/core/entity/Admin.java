package com.software.core.entity;


import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "admin")

public class Admin{

	// Fields

	private Integer adminId;
	private String adminName;
	private String adminPwd;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(String adminName, String adminPwd) {
		this.adminName = adminName;
		this.adminPwd = adminPwd;
	}

	
	public String toString() {
        return "{name:" + adminName + ",password:" + adminPwd + "}";
    }
	
	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "admin_ID", unique = true, nullable = false)

	public Integer getAdminId() {
		return this.adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	@Column(name = "admin_name", nullable = false, length = 16)

	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	@Column(name = "admin_pwd", nullable = false, length = 16)

	public String getAdminPwd() {
		return this.adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

}