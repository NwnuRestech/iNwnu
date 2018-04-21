package com.xxs.bean;

import java.sql.Timestamp;

public class Complaint {
	private int comid;//Ͷ��id
	private String stu_id;//Ͷ����ID
	private String rest_id;//��Ͷ����ID
	private String comp_event;//ҪͶ�ߵ��¼�
	private String sug_solution;//˭�����Ͷ���¼�
	private Timestamp comp_time;//Ͷ�ߵ�ʱ��
	private int comp_state;//Ͷ�ߵ�״̬��0����δ����1�����Ѵ���
	public int getComid() {
		return comid;
	}
	public void setComid(int comid) {
		this.comid = comid;
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
	public String getComp_event() {
		return comp_event;
	}
	public void setComp_event(String comp_event) {
		this.comp_event = comp_event;
	}
	public String getSug_solution() {
		return sug_solution;
	}
	public void setSug_solution(String sug_solution) {
		this.sug_solution = sug_solution;
	}
	public Timestamp getComp_time() {
		return comp_time;
	}
	public void setComp_time(Timestamp comp_time) {
		this.comp_time = comp_time;
	}
	public int getComp_state() {
		return comp_state;
	}
	public void setComp_state(int comp_state) {
		this.comp_state = comp_state;
	}
	
	public Complaint() {
		super();
	}
	public Complaint(String stu_id, String rest_id, String comp_event, String sug_solution, Timestamp comp_time,
			int comp_state) {
		super();
		this.stu_id = stu_id;
		this.rest_id = rest_id;
		this.comp_event = comp_event;
		this.sug_solution = sug_solution;
		this.comp_time = comp_time;
		this.comp_state = comp_state;
	}
	
	public Complaint(int comid, String stu_id, String rest_id, String comp_event, String sug_solution,
			Timestamp comp_time, int comp_state) {
		super();
		this.comid = comid;
		this.stu_id = stu_id;
		this.rest_id = rest_id;
		this.comp_event = comp_event;
		this.sug_solution = sug_solution;
		this.comp_time = comp_time;
		this.comp_state = comp_state;
	}
	@Override
	public String toString() {
		return "Complain [comid=" + comid + ", stu_id=" + stu_id + ", rest_id=" + rest_id + ", comp_event=" + comp_event
				+ ", sug_solution=" + sug_solution + ", comp_time=" + comp_time + ", comp_state=" + comp_state + "]";
	}
	
}
