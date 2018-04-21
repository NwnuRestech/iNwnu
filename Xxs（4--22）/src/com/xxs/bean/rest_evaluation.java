package com.xxs.bean;

import java.sql.Timestamp;

public class rest_evaluation {
	private String stu_nickname;//评价人
	private String eval_content;//评价内容
	private Timestamp eval_time;//评价时间
	private int eval_fraction;//评价分
	private String stu_img;

	public String getStu_nickname() {
		return stu_nickname;
	}
	public void setStu_nickname(String stu_nickname) {
		this.stu_nickname = stu_nickname;
	}

	public String getEval_content() {
		return eval_content;
	}
	public void setEval_content(String eval_content) {
		this.eval_content = eval_content;
	}
	public Timestamp getEval_time() {
		return eval_time;
	}
	public void setEval_time(Timestamp eval_time) {
		this.eval_time = eval_time;
	}
	public int getEval_fraction() {
		return eval_fraction;
	}
	public void setEval_fraction(int eval_fraction) {
		this.eval_fraction = eval_fraction;
	}
	public String getStu_img() {
		return stu_img;
	}
	public void setStu_img(String stu_img) {
		this.stu_img = stu_img;
	}



	public rest_evaluation(String stu_nickname, String eval_content, Timestamp eval_time, int eval_fraction,
			String stu_img) {
		super();
		this.stu_nickname = stu_nickname;
		this.eval_content = eval_content;
		this.eval_time = eval_time;
		this.eval_fraction = eval_fraction;
		this.stu_img = stu_img;
	}
	@Override
	public String toString() {
		return "rest_evaluation [stu_nickname=" + stu_nickname + ", eval_content=" + eval_content + ", eval_time="
				+ eval_time + ", eval_fraction=" + eval_fraction + ", stu_img=" + stu_img + "]";
	}
	public rest_evaluation() {
		super();
	}
	
	
}
