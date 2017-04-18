package com.software.core.entity;

import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user")

public class User {

	// Fields

	private Integer userId;
	private String userName;
	private String userPwd;
	private String userNickname;
	private String userTruename;
	private String userAddress;
	private String userPhone;
	private Integer userPoint;
	private Date userRegistime;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String userName, String userPwd, String userNickname, String userTruename, String userAddress,
			String userPhone, Date userRegistime) {
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userTruename = userTruename;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
		this.userRegistime = userRegistime;
	}

	/** full constructor */
	public User(String userName, String userPwd, String userNickname, String userTruename, String userAddress,
			String userPhone, Integer userPoint, Date userRegistime) {
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userTruename = userTruename;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
		this.userPoint = userPoint;
		this.userRegistime = userRegistime;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "user_ID", unique = true, nullable = false)

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "user_name", nullable = false, length = 16)

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "user_pwd", nullable = false, length = 16)

	public String getUserPwd() {
		return this.userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	@Column(name = "user_nickname", nullable = false, length = 10)

	public String getUserNickname() {
		return this.userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	@Column(name = "user_truename", nullable = false, length = 10)

	public String getUserTruename() {
		return this.userTruename;
	}

	public void setUserTruename(String userTruename) {
		this.userTruename = userTruename;
	}

	@Column(name = "user_address", nullable = false, length = 65535)

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	@Column(name = "user_phone", nullable = false, length = 11)

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	@Column(name = "user_point")

	public Integer getUserPoint() {
		return this.userPoint;
	}

	public void setUserPoint(Integer userPoint) {
		this.userPoint = userPoint;
	}

	@Column(name = "user_registime", nullable = false, length = 8)

	public Date getUserRegistime() {
		return this.userRegistime;
	}

	public void setUserRegistime(Date userRegistime) {
		this.userRegistime = userRegistime;
	}

}