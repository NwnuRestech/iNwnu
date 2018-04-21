package com.xxs.bean;

public class Rest {
	private String rest_id;
	private String rest_name;
	private String rest_peoplename;
	private String rest_tel;
	private String rest_password;
	private int rest_garde;
	private int rest_credit;
	private String rest_loc;
	private int rest_hot;
	private int rest_money;
	public String getRest_id() {
		return rest_id;
	}
	public void setRest_id(String rest_id) {
		this.rest_id = rest_id;
	}
	public String getRest_name() {
		return rest_name;
	}
	public void setRest_name(String rest_name) {
		this.rest_name = rest_name;
	}
	public String getRest_peoplename() {
		return rest_peoplename;
	}
	public void setRest_peoplename(String rest_peoplename) {
		this.rest_peoplename = rest_peoplename;
	}
	public String getRest_tel() {
		return rest_tel;
	}
	public void setRest_tel(String rest_tel) {
		this.rest_tel = rest_tel;
	}
	public String getRest_password() {
		return rest_password;
	}
	public void setRest_password(String rest_password) {
		this.rest_password = rest_password;
	}
	public int getRest_garde() {
		return rest_garde;
	}
	public void setRest_garde(int rest_garde) {
		this.rest_garde = rest_garde;
	}
	public int getRest_credit() {
		return rest_credit;
	}
	public void setRest_credit(int rest_credit) {
		this.rest_credit = rest_credit;
	}
	public String getRest_loc() {
		return rest_loc;
	}
	public void setRest_loc(String rest_loc) {
		this.rest_loc = rest_loc;
	}
	public int getRest_hot() {
		return rest_hot;
	}
	public void setRest_hot(int rest_hot) {
		this.rest_hot = rest_hot;
	}
	public int getRest_money() {
		return rest_money;
	}
	public void setRest_money(int rest_money) {
		this.rest_money = rest_money;
	}
	public Rest(String rest_id, String rest_name, String rest_peoplename, String rest_tel, String rest_password,
			int rest_garde, int rest_credit, String rest_loc, int rest_hot, int rest_money) {
		super();
		this.rest_id = rest_id;
		this.rest_name = rest_name;
		this.rest_peoplename = rest_peoplename;
		this.rest_tel = rest_tel;
		this.rest_password = rest_password;
		this.rest_garde = rest_garde;
		this.rest_credit = rest_credit;
		this.rest_loc = rest_loc;
		this.rest_hot = rest_hot;
		this.rest_money = rest_money;
	}
	public Rest() {
		super();
	}
	@Override
	public String toString() {
		return "Rest [rest_id=" + rest_id + ", rest_name=" + rest_name + ", rest_peoplename=" + rest_peoplename
				+ ", rest_tel=" + rest_tel + ", rest_password=" + rest_password + ", rest_garde=" + rest_garde
				+ ", rest_credit=" + rest_credit + ", rest_loc=" + rest_loc + ", rest_hot=" + rest_hot + ", rest_money="
				+ rest_money + "]";
	}
	
	
}
