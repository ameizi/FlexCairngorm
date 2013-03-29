package com.example;

public class UserInfo {
	
	private String username;
	private String location;
	private String schoole;
	private String telphone;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSchoole() {
		return schoole;
	}
	public void setSchoole(String schoole) {
		this.schoole = schoole;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	
	public UserInfo() {
	}
	
	public UserInfo(String username, String location, String schoole,
			String telphone) {
		super();
		this.username = username;
		this.location = location;
		this.schoole = schoole;
		this.telphone = telphone;
	}
	
	@Override
	public String toString() {
		return "username:"+username+";location:"+location+";schoole:"+schoole+";telphone:"+telphone;
	}
	
	
}
