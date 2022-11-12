package com.cordialHost.entities;

public class User {

	private String name;
	private int phoneNo;
	private String email;
	private String password;
	private String gender;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String name, int phoneNo, String email, String password, String gender) {
		super();
		this.name = name;
		this.phoneNo = phoneNo;
		this.email = email;
		this.password = password;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}