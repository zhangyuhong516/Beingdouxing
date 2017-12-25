package com.bdx.pojo;

import java.util.Date;

public class Questions {
	private int id;
	private String title;
	private String  contents;
	 private int  inter;
	 private int user_id;
	private Date dates;
	
	private int  ancount;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getInter() {
		return inter;
	}
	public void setInter(int inter) {
		this.inter = inter;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getDates() {
		return dates;
	}
	public void setDates(Date dates) {
		this.dates = dates;
	}
	public int getAncount() {
		return ancount;
	}
	public void setAncount(int ancount) {
		this.ancount = ancount;
	}
	
}
