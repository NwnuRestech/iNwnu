package com.xxs.bean;

public class ShowR {
	private String rest_name;
	private String img_loc;
	
	
	public String getRest_name() {
		return rest_name;
	}
	public void setRest_name(String rest_name) {
		this.rest_name = rest_name;
	}
	public String getImg_loc() {
		return img_loc;
	}
	public void setImg_loc(String img_loc) {
		this.img_loc = img_loc;
	}
	public ShowR(String rest_name, String img_loc) {
		super();
		this.rest_name = rest_name;
		this.img_loc = img_loc;
	}
	public ShowR() {
		super();
	}
	
	public ShowR(String rest_name) {
		super();
		this.rest_name = rest_name;
	}
	@Override
	public String toString() {
		return "ShowR [rest_name=" + rest_name + ", img_loc=" + img_loc + "]";
	}
	
	
}
