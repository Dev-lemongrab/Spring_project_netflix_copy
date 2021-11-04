package com.mgr.netflix.client.vo;

import java.util.Date;

public class ClientVO {
	
	private String email;
	private String password;
	private String membership;
	private String membership_chk;
	private String membership_date;
	private String name;
	private String phone;
	private String cardNum;
	private String expireDate;
	private String birthYear;
	private String birthMonth;
	private String birthDay;
	
	public ClientVO() {
		
	}



	
	
	public ClientVO(String email, String password, String membership, String membership_chk, String membership_date,
			String name,String phone, String cardNum, String expireDate, String birthYear, String birthMonth, String birthDay) {
		super();
		this.email = email;
		this.password = password;
		this.membership = membership;
		this.membership_chk = membership_chk;
		this.membership_date = membership_date;
		this.name = name;
		this.phone = phone;
		this.cardNum = cardNum;
		this.expireDate = expireDate;
		this.birthYear = birthYear;
		this.birthMonth = birthMonth;
		this.birthDay = birthDay;
	}





	public String getPhone() {
		return phone;
	}





	public void setPhone(String phone) {
		this.phone = phone;
	}





	public String getMembership_date() {
		return membership_date;
	}





	public void setMembership_date(String membership_date) {
		this.membership_date = membership_date;
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

	public String getMembership_chk() {
		return membership_chk;
	}

	public void setMembership_chk(String membership_chk) {
		this.membership_chk = membership_chk;
	}

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public String getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	public String getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	
	

	@Override
	public String toString() {
		return "ClientVO [email=" + email + ", password=" + password + ", membership=" + membership
				+ ", membership_chk=" + membership_chk + ", membership_date=" + membership_date + ", name=" + name
				+ ", cardNum=" + cardNum + ", expireDate=" + expireDate + ", birthYear=" + birthYear + ", birthMonth="
				+ birthMonth + ", birthDay=" + birthDay + "]";
	}

	//비밀번호가 같지 않을 경우 false반환
	public boolean CheckPassword(String password) {
		if(!(this.password.equals(password))) {
			return false;
		}
		return true;
	}
}
