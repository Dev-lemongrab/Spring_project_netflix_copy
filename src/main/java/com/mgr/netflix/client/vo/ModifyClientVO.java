package com.mgr.netflix.client.vo;

public class ModifyClientVO {
	
	private String email;
	private String currenPassword;
	private String newPassword;
	private String confirnewPassword;
	private boolean pw_remember;
	
	
	


	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getCurrenPassword() {
		return currenPassword;
	}





	public void setCurrenPassword(String currenPassword) {
		this.currenPassword = currenPassword;
	}





	public String getNewPassword() {
		return newPassword;
	}





	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}





	public String getConfirnewPassword() {
		return confirnewPassword;
	}





	public void setConfirnewPassword(String confirnewPassword) {
		this.confirnewPassword = confirnewPassword;
	}





	public boolean isPw_remember() {
		return pw_remember;
	}





	public void setPw_remember(boolean pw_remember) {
		this.pw_remember = pw_remember;
	}





	public boolean changePassword(String oldPw, String newPw) {
		
		if(this.currenPassword.equals(oldPw)) {
			this.currenPassword=newPw;
			return true;//맞으면 바꾸고 true
		}
		return false;//틀리면 false
	}
	
	
}
