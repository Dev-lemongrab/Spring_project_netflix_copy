package com.mgr.netflix.client.vo;

public class PhoneChangeVO {
	private String email;
	private String currenPhone;
	private String newPhone;
	
	
	public PhoneChangeVO() {
		// TODO Auto-generated constructor stub
	}
	
	public PhoneChangeVO(String email, String currenPhone, String newPhone) {
		super();
		this.email=email;
		this.currenPhone = currenPhone;
		this.newPhone = newPhone;
	}

	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCurrenPhone() {
		return currenPhone;
	}

	public void setCurrenPhone(String currenPhone) {
		this.currenPhone = currenPhone;
	}

	public String getNewPhone() {
		return newPhone;
	}

	public void setNewPhone(String newPhone) {
		this.newPhone = newPhone;
	}
	
	
}
