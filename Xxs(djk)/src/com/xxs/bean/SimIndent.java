package com.xxs.bean;

public class SimIndent {
	private long indent_id;
	private String food_name;
	private int food_num;
	private String indent_stat;
	private String foodkey_key;
	private String indent_money;
	private String all_money;
	public long getIndent_id() {
		return indent_id;
	}
	public void setIndent_id(long indent_id) {
		this.indent_id = indent_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public int getFood_num() {
		return food_num;
	}
	public void setFood_num(int food_num) {
		this.food_num = food_num;
	}
	public String getIndent_stat() {
		return indent_stat;
	}
	public void setIndent_stat(String indent_stat) {
		this.indent_stat = indent_stat;
	}
	public String getFoodkey_key() {
		return foodkey_key;
	}
	public void setFoodkey_key(String foodkey_key) {
		this.foodkey_key = foodkey_key;
	}
	public String getIndent_money() {
		return indent_money;
	}
	public void setIndent_money(String indent_money) {
		this.indent_money = indent_money;
	}
	public String getAll_money() {
		return all_money;
	}
	public void setAll_money(String all_money) {
		this.all_money = all_money;
	}
	@Override
	public String toString() {
		return "SimIndent [indent_id=" + indent_id + ", food_name=" + food_name + ", food_num=" + food_num
				+ ", indent_stat=" + indent_stat + ", foodkey_key=" + foodkey_key + ", indent_money=" + indent_money
				+ ", all_money=" + all_money + "]";
	}
	public SimIndent(long indent_id, String food_name, int food_num, String indent_stat, String foodkey_key,
			String indent_money, String all_money) {
		super();
		this.indent_id = indent_id;
		this.food_name = food_name;
		this.food_num = food_num;
		this.indent_stat = indent_stat;
		this.foodkey_key = foodkey_key;
		this.indent_money = indent_money;
		this.all_money = all_money;
	}
	public SimIndent() {
		super();
	}
	
}
