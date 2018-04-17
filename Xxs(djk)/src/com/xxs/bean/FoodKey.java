package com.xxs.bean;

public class FoodKey {
	private int foodkey_id;
	private String foodkey_key;
	private int foodkey_date;
	private String foodkey_restid;
	public int getFoodkey_id() {
		return foodkey_id;
	}
	public void setFoodkey_id(int foodkey_id) {
		this.foodkey_id = foodkey_id;
	}
	public String getFoodkey_key() {
		return foodkey_key;
	}
	public void setFoodkey_key(String foodkey_key) {
		this.foodkey_key = foodkey_key;
	}
	public int getfoodkey_date() {
		return foodkey_date;
	}
	public void setfoodkey_date(int foodkey_date) {
		this.foodkey_date = foodkey_date;
	}
	public String getFoodkey_restid() {
		return foodkey_restid;
	}
	public void setFoodkey_restid(String foodkey_restid) {
		this.foodkey_restid = foodkey_restid;
	}
	@Override
	public String toString() {
		return "FoodKey [foodkey_id=" + foodkey_id + ", foodkey_key=" + foodkey_key + ", foodkey_date=" + foodkey_date
				+ ", foodkey_restid=" + foodkey_restid + "]";
	}
	public FoodKey(int foodkey_id, String foodkey_key, int foodkey_date, String foodkey_restid) {
		super();
		this.foodkey_id = foodkey_id;
		this.foodkey_key = foodkey_key;
		this.foodkey_date = foodkey_date;
		this.foodkey_restid = foodkey_restid;
	}
	public FoodKey() {
		super();
	}
	
}
