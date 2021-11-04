package com.mgr.netflix.client.vo;

public class ClientPaymentVO {
	private String email;
	private String cardNum;
	private String expireDate;
	private String name;
	private String birthYear;
	private String birthMonth;
	private String birthDay;
	private boolean termsOfUseCheckAll;
	private boolean termsOfUse;
	private boolean personalInfoThirdParties;
	private boolean personalInfoAbroad;
	private boolean personalInfoGateway;
	private boolean cancelMembershipAnytime;
	
	//생성자
	public ClientPaymentVO() {
		// TODO Auto-generated constructor stub
	}

	public ClientPaymentVO(String email, String cardNum, String expireDate, String name, String birthYear,
			String birthMonth, String birthDay, boolean termsOfUseCheckAll, boolean termsOfUse,
			boolean personalInfoThirdParties, boolean personalInfoAbroad, boolean personalInfoGateway,
			boolean cancelMembershipAnytime) {
		super();
		this.email = email;
		this.cardNum = cardNum;
		this.expireDate = expireDate;
		this.name = name;
		this.birthYear = birthYear;
		this.birthMonth = birthMonth;
		this.birthDay = birthDay;
		this.termsOfUseCheckAll = termsOfUseCheckAll;
		this.termsOfUse = termsOfUse;
		this.personalInfoThirdParties = personalInfoThirdParties;
		this.personalInfoAbroad = personalInfoAbroad;
		this.personalInfoGateway = personalInfoGateway;
		this.cancelMembershipAnytime = cancelMembershipAnytime;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public boolean isTermsOfUseCheckAll() {
		return termsOfUseCheckAll;
	}

	public void setTermsOfUseCheckAll(boolean termsOfUseCheckAll) {
		this.termsOfUseCheckAll = termsOfUseCheckAll;
	}

	public boolean isTermsOfUse() {
		return termsOfUse;
	}

	public void setTermsOfUse(boolean termsOfUse) {
		this.termsOfUse = termsOfUse;
	}

	public boolean isPersonalInfoThirdParties() {
		return personalInfoThirdParties;
	}

	public void setPersonalInfoThirdParties(boolean personalInfoThirdParties) {
		this.personalInfoThirdParties = personalInfoThirdParties;
	}

	public boolean isPersonalInfoAbroad() {
		return personalInfoAbroad;
	}

	public void setPersonalInfoAbroad(boolean personalInfoAbroad) {
		this.personalInfoAbroad = personalInfoAbroad;
	}

	public boolean isPersonalInfoGateway() {
		return personalInfoGateway;
	}

	public void setPersonalInfoGateway(boolean personalInfoGateway) {
		this.personalInfoGateway = personalInfoGateway;
	}

	public boolean isCancelMembershipAnytime() {
		return cancelMembershipAnytime;
	}

	public void setCancelMembershipAnytime(boolean cancelMembershipAnytime) {
		this.cancelMembershipAnytime = cancelMembershipAnytime;
	}

	@Override
	public String toString() {
		return "ClientPaymentVO [email=" + email + ", cardNum=" + cardNum + ", expireDate=" + expireDate + ", name="
				+ name + ", birthYear=" + birthYear + ", birthMonth=" + birthMonth + ", birthDay=" + birthDay
				+ ", termsOfUseCheckAll=" + termsOfUseCheckAll + ", termsOfUse=" + termsOfUse
				+ ", personalInfoThirdParties=" + personalInfoThirdParties + ", personalInfoAbroad="
				+ personalInfoAbroad + ", personalInfoGateway=" + personalInfoGateway + ", cancelMembershipAnytime="
				+ cancelMembershipAnytime + "]";
	}
	
	
	
	

	
	
	
	
}
