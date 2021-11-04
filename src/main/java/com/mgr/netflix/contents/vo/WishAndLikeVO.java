package com.mgr.netflix.contents.vo;

public class WishAndLikeVO {
	private String content_id;
	private String content_title;
	private String email;
	private int row_num;
	private String wish;
	private String like;
	private String dislike;
	private String wish_date;
	private String like_date;
	private String dislike_date;
	
	public WishAndLikeVO() {
		// TODO Auto-generated constructor stub
	}

	public WishAndLikeVO(String content_id, String content_title, String email, int row_num, String wish,
			String like, String dislike, String wish_date, String like_date, String dislike_date) {
		super();
		this.content_id = content_id;
		this.content_title = content_title;
		this.email = email;
		this.row_num = row_num;
		this.wish = wish;
		this.like = like;
		this.dislike = dislike;
		this.wish_date = wish_date;
		this.like_date = like_date;
		this.dislike_date = dislike_date;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getRow_num() {
		return row_num;
	}

	public void setRow_num(int row_num) {
		this.row_num = row_num;
	}

	public String getWish() {
		return wish;
	}

	public void setWish(String wish) {
		this.wish = wish;
	}

	public String getLike() {
		return like;
	}

	public void setLike(String like) {
		this.like = like;
	}

	public String getDislike() {
		return dislike;
	}

	public void setDislike(String dislike) {
		this.dislike = dislike;
	}

	public String getWish_date() {
		return wish_date;
	}

	public void setWish_date(String wish_date) {
		this.wish_date = wish_date;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public String getDislike_date() {
		return dislike_date;
	}

	public void setDislike_date(String dislike_date) {
		this.dislike_date = dislike_date;
	}

	@Override
	public String toString() {
		return "WishAndLikeVO [content_id=" + content_id + ", content_title=" + content_title + ", email=" + email
				+ ", row_num=" + row_num + ", wish=" + wish + ", like=" + like + ", dislike=" + dislike + ", wish_date="
				+ wish_date + ", like_date=" + like_date + ", dislike_date=" + dislike_date + "]";
	}
	
	
	
	
	
	
	
}
