package com.mgr.netflix.client.vo;

public class ClientLoginVO {
	
	private String email;
	private String password;
	private String membership;
	private boolean loginInfo;
	
	//constructor
	public ClientLoginVO() {
		
	}
	
	public ClientLoginVO(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	//getter setter
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

	public boolean isLoginInfo() {
		return loginInfo;
	}

	public void setLoginInfo(boolean loginInfo) {
		this.loginInfo = loginInfo;
	}

	@Override
	public String toString() {
		return "ClientLoginVO [email=" + email + ", password=" + password + ", membership=" + membership
				+ ", loginInfo=" + loginInfo + "]";
	}

	
	
	
	
	
	
}
