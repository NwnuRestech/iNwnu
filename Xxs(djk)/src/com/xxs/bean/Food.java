package com.xxs.bean;

public class Food {
	private int food_id;
	private String food_name;
	private String food_restid;
	private String food_money;
	private String food_introduce;
	private int food_type;
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public String getFood_restid() {
		return food_restid;
	}
	public void setFood_restid(String food_restid) {
		this.food_restid = food_restid;
	}
	public String getFood_money() {
		return food_money;
	}
	public void setFood_money(String food_money) {
		this.food_money = food_money;
	}
	public String getFood_introduce() {
		return food_introduce;
	}
	public void setFood_introduce(String food_introduce) {
		this.food_introduce = food_introduce;
	}
	public int getFood_type() {
		return food_type;
	}
	public void setFood_type(int food_type) {
		this.food_type = food_type;
	}
	public Food(int food_id, String food_name, String food_restid, String food_money, String food_introduce,
			int food_type) {
		super();
		this.food_id = food_id;
		this.food_name = food_name;
		this.food_restid = food_restid;
		this.food_money = food_money;
		this.food_introduce = food_introduce;
		this.food_type = food_type;
	}
	@Override
	public String toString() {
		return "Food [food_id=" + food_id + ", food_name=" + food_name + ", food_restid=" + food_restid
				+ ", food_money=" + food_money + ", food_introduce=" + food_introduce + ", food_type=" + food_type
				+ "]";
	}
	public Food() {
		super();
	}
	
	
}
