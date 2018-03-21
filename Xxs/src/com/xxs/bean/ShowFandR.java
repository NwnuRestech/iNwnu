package com.xxs.bean;

public class ShowFandR {
	private String food_name;
	private String food_money;
	private String rest_name;
	private String img_loc;
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public String getFood_money() {
		return food_money;
	}
	public void setFood_money(String food_money) {
		this.food_money = food_money;
	}
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
	public ShowFandR(String food_name, String food_money, String rest_name, String img_loc) {
		super();
		this.food_name = food_name;
		this.food_money = food_money;
		this.rest_name = rest_name;
		this.img_loc = img_loc;
	}
	public ShowFandR() {
		super();
	}
	@Override
	public String toString() {
		return "ShowFandR [food_name=" + food_name + ", food_money=" + food_money + ", rest_name=" + rest_name
				+ ", img_loc=" + img_loc + "]";
	}
	




}
