package com.xxs.bean;

import java.sql.Timestamp;

public class Indent {
	private long indent_id;
	private String indent_money;
	private int indent_stat;
	private int food_id;
	private String rest_id;
	private String stu_id;
	private int food_num;
	private String indent_remk;
	private Timestamp indent_foodtime;
	private Timestamp get_foodtime;
	public long getIndent_id() {
		return indent_id;
	}
	public void setIndent_id(long indent_id) {
		this.indent_id = indent_id;
	}
	public String getIndent_money() {
		return indent_money;
	}
	public void setIndent_money(String indent_money) {
		this.indent_money = indent_money;
	}
	public int getIndent_stat() {
		return indent_stat;
	}
	public void setIndent_stat(int indent_stat) {
		this.indent_stat = indent_stat;
	}
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public String getRest_id() {
		return rest_id;
	}
	public void setRest_id(String rest_id) {
		this.rest_id = rest_id;
	}
	public String getStu_id() {
		return stu_id;
	}
	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	public int getFood_num() {
		return food_num;
	}
	public void setFood_num(int food_num) {
		this.food_num = food_num;
	}
	public String getIndent_remk() {
		return indent_remk;
	}
	public void setIndent_remk(String indent_remk) {
		this.indent_remk = indent_remk;
	}
	public Timestamp getIndent_foodtime() {
		return indent_foodtime;
	}
	public void setIndent_foodtime(Timestamp indent_foodtime) {
		this.indent_foodtime = indent_foodtime;
	}
	public Timestamp getGet_foodtime() {
		return get_foodtime;
	}
	public void setGet_foodtime(Timestamp get_foodtime) {
		this.get_foodtime = get_foodtime;
	}
	@Override
	public String toString() {
		return "Indent [indent_id=" + indent_id + ", indent_money=" + indent_money + ", indent_stat=" + indent_stat
				+ ", food_id=" + food_id + ", rest_id=" + rest_id + ", stu_id=" + stu_id + ", food_num=" + food_num
				+ ", indent_remk=" + indent_remk + ", indent_foodtime=" + indent_foodtime + ", get_foodtime="
				+ get_foodtime + "]";
	}
	public Indent(long indent_id, String indent_money, int indent_stat, int food_id, String rest_id, String stu_id,
			int food_num, String indent_remk, Timestamp indent_foodtime, Timestamp get_foodtime) {
		super();
		this.indent_id = indent_id;
		this.indent_money = indent_money;
		this.indent_stat = indent_stat;
		this.food_id = food_id;
		this.rest_id = rest_id;
		this.stu_id = stu_id;
		this.food_num = food_num;
		this.indent_remk = indent_remk;
		this.indent_foodtime = indent_foodtime;
		this.get_foodtime = get_foodtime;
	}
	public Indent() {
		super();
	}
	
}
