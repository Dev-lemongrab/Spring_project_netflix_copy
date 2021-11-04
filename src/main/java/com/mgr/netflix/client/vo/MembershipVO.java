package com.mgr.netflix.client.vo;

public class MembershipVO {
	private String name;
	private String price;
	private String price_vat;
	private String price_vat_10;
	
	
	public MembershipVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public MembershipVO(String name, String price, String price_vat, String price_vat_10) {
		super();
		this.name = name;
		this.price = price;
		this.price_vat = price_vat;
		this.price_vat_10 = price_vat_10;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPrice_vat() {
		return price_vat;
	}
	public void setPrice_vat(String price_vat) {
		this.price_vat = price_vat;
	}


	public String getPrice_vat_10() {
		return price_vat_10;
	}


	public void setPrice_vat_10(String price_vat_10) {
		this.price_vat_10 = price_vat_10;
	}
	
	
}
