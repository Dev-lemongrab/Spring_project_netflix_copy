package com.mgr.netflix.client.vo;

public class ProfileInfo {
	private int row_num;
	private String profile_name;
	private String email;
	private String language;
	private	String series_ap;
	private String preview_ap;
	
	
	public ProfileInfo() {
		// TODO Auto-generated constructor stub
	}


	public ProfileInfo(int row_num, String profile_name, String email, String language, String series_ap,
			String preview_ap) {
		super();
		this.row_num = row_num;
		this.profile_name = profile_name;
		this.email = email;
		this.language = language;
		this.series_ap = series_ap;
		this.preview_ap = preview_ap;
	}


	public int getRow_num() {
		return row_num;
	}


	public void setRow_num(int row_num) {
		this.row_num = row_num;
	}


	public String getProfile_name() {
		return profile_name;
	}


	public void setProfile_name(String profile_name) {
		this.profile_name = profile_name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getLanguage() {
		return language;
	}


	public void setLanguage(String language) {
		this.language = language;
	}


	public String getSeries_ap() {
		return series_ap;
	}


	public void setSeries_ap(String series_ap) {
		this.series_ap = series_ap;
	}


	public String getPreview_ap() {
		return preview_ap;
	}


	public void setPreview_ap(String preview_ap) {
		this.preview_ap = preview_ap;
	}


	@Override
	public String toString() {
		return "ProfileInfo [row_num=" + row_num + ", profile_name=" + profile_name + ", email=" + email + ", language="
				+ language + ", series_ap=" + series_ap + ", preview_ap=" + preview_ap + "]";
	}
 
	
}
