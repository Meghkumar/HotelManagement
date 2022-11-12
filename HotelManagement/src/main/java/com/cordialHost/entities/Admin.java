package com.cordialHost.entities;

public class Admin {

	private String adminemail;
	private String adminpassword;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(String adminemail, String adminpassword) {
		super();
		this.adminemail = adminemail;
		this.adminpassword = adminpassword;
	}

	public String getAdminemail() {
		return adminemail;
	}

	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}

	public String getAdminpassword() {
		return adminpassword;
	}

	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}

}
