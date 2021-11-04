package com.mgr.netflix.client.vo;

public class ChangeEmailVO {
	private String currenEmail;
	private String newEmail;
	
	public ChangeEmailVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public ChangeEmailVO(String currenEmail, String newEmail) {
		super();
		this.currenEmail = currenEmail;
		this.newEmail = newEmail;
	}



	public String getCurrenEmail() {
		return currenEmail;
	}


	public void setCurrenEmail(String currenEmail) {
		this.currenEmail = currenEmail;
	}


	public String getNewEmail() {
		return newEmail;
	}
	public void setNewEmail(String newEmail) {
		this.newEmail = newEmail;
	}


	@Override
	public String toString() {
		return "ChangeEmailVO [currenEmail=" + currenEmail + ", newEmail=" + newEmail + "]";
	}
	
	
}
