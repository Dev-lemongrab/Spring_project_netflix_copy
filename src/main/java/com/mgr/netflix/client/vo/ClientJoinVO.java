package com.mgr.netflix.client.vo;

public class ClientJoinVO {
	
	private String email;
	private String password;
	private String membership;
	
	public ClientJoinVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public ClientJoinVO(String email, String password, String membership) {
		super();
		this.email = email;
		this.password = password;
		this.membership = membership;
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
	public String getMembership() {
		return membership;
	}
	public void setMembership(String membership) {
		this.membership = membership;
	}
	
	
}
