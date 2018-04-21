package com.xxs.bean;

import java.sql.Timestamp;

public class RestEvaluation {
	private int eval_id;
	private String stu_id;
	private String rest_id;
	private String eval_content;
	private Timestamp eval_time;
	private int eval_fraction;
	public int getEval_id() {
		return eval_id;
	}
	public void setEval_id(int eval_id) {
		this.eval_id = eval_id;
	}
	public String getStu_id() {
		return stu_id;
	}
	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	public String getRest_id() {
		return rest_id;
	}
	public void setRest_id(String rest_id) {
		this.rest_id = rest_id;
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
	public RestEvaluation(int eval_id, String stu_id, String rest_id, String eval_content, Timestamp eval_time,
			int eval_fraction) {
		super();
		this.eval_id = eval_id;
		this.stu_id = stu_id;
		this.rest_id = rest_id;
		this.eval_content = eval_content;
		this.eval_time = eval_time;
		this.eval_fraction = eval_fraction;
	}
	public RestEvaluation() {
		super();
	}
	@Override
	public String toString() {
		return "RestEvaluation [eval_id=" + eval_id + ", stu_id=" + stu_id + ", rest_id=" + rest_id + ", eval_content="
				+ eval_content + ", eval_time=" + eval_time + ", eval_fraction=" + eval_fraction + "]";
	}
	
}
