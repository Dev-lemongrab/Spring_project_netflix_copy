package com.mgr.netflix.contents.vo;



public class ViewedVO {
	private String content_id;
	private String content_title;
	private int	row_num;
	private String email;
	private String view_date;
	
	public ViewedVO() {
		// TODO Auto-generated constructor stub
	}

	
	public ViewedVO(String content_id, String content_title, int row_num, String email, String view_date) {
		super();
		this.content_id = content_id;
		this.content_title = content_title;
		this.row_num = row_num;
		this.email = email;
		this.view_date = view_date;
	}


	public String getContent_id() {
		return content_id;
	}

	public void setContent_id(String content_id) {
		this.content_id = content_id;
	}

	public String getContent_title() {
		return content_title;
	}

	public void setContent_title(String content_title) {
		this.content_title = content_title;
	}

	public int getRow_num() {
		return row_num;
	}

	public void setRow_num(int row_num) {
		this.row_num = row_num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getView_date() {
		return view_date;
	}

	public void setView_date(String view_date) {
		this.view_date = view_date;
	}


	@Override
	public String toString() {
		return "ViewedVO [content_id=" + content_id + ", content_title=" + content_title + ", row_num=" + row_num
				+ ", email=" + email + ", view_date=" + view_date + "]";
	}
	
	
	
	
}
