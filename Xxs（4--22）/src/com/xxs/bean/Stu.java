package com.xxs.bean;

public class Stu {
	private String stu_id;
	private String stu_name;
	private String stu_nickname;
	private String stu_tel;
	private String stu_password;
	private int stu_grade;
	private int stu_credit;
	private String stu_dorm;
	private String stu_dept;
	private int stu_money;
	public String getStu_id() {
		return stu_id;
	}
	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getStu_nickname() {
		return stu_nickname;
	}
	public void setStu_nickname(String stu_nickname) {
		this.stu_nickname = stu_nickname;
	}
	public String getStu_tel() {
		return stu_tel;
	}
	public void setStu_tel(String stu_tel) {
		this.stu_tel = stu_tel;
	}
	public String getStu_password() {
		return stu_password;
	}
	public void setStu_password(String stu_password) {
		this.stu_password = stu_password;
	}
	public int getStu_grade() {
		return stu_grade;
	}
	public void setStu_grade(int stu_grade) {
		this.stu_grade = stu_grade;
	}
	public int getStu_credit() {
		return stu_credit;
	}
	public void setStu_credit(int stu_credit) {
		this.stu_credit = stu_credit;
	}
	public String getStu_dorm() {
		return stu_dorm;
	}
	public void setStu_dorm(String stu_dorm) {
		this.stu_dorm = stu_dorm;
	}
	public String getStu_dept() {
		return stu_dept;
	}
	public void setStu_dept(String stu_dept) {
		this.stu_dept = stu_dept;
	}
	public int getStu_money() {
		return stu_money;
	}
	public void setStu_money(int stu_money) {
		this.stu_money = stu_money;
	}
	@Override
	public String toString() {
		return "Stu [stu_id=" + stu_id + ", stu_name=" + stu_name + ", stu_nickname=" + stu_nickname + ", stu_tel="
				+ stu_tel + ", stu_password=" + stu_password + ", stu_grade=" + stu_grade + ", stu_credit=" + stu_credit
				+ ", stu_dorm=" + stu_dorm + ", stu_dept=" + stu_dept + ", stu_money=" + stu_money + "]";
	}
	public Stu(String stu_id, String stu_name, String stu_nickname, String stu_tel, String stu_password, int stu_grade,
			int stu_credit, String stu_dorm, String stu_dept, int stu_money) {
		super();
		this.stu_id = stu_id;
		this.stu_name = stu_name;
		this.stu_nickname = stu_nickname;
		this.stu_tel = stu_tel;
		this.stu_password = stu_password;
		this.stu_grade = stu_grade;
		this.stu_credit = stu_credit;
		this.stu_dorm = stu_dorm;
		this.stu_dept = stu_dept;
		this.stu_money = stu_money;
	}
	public Stu() {
		super();
	}
}
