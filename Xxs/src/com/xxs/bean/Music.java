package com.xxs.bean;

import java.sql.Timestamp;

public class Music {
	private int song_id;
	private String song_stu;
	private String stu_id;
	private String song_name;
	private Timestamp song_time;
	private String song_event;
	private String song_state;

	@Override
	public String toString() {
		return "Music [song_id=" + song_id + ", song_stu=" + song_stu + ", stu_id=" + stu_id + ", song_name="
				+ song_name + ", song_time=" + song_time + ", song_event=" + song_event + ", song_state=" + song_state
				+ "]";
	}

	public Music(String song_stu, String stu_id, String song_name, Timestamp song_time, String song_event,
			String song_state) {
		super();
		this.song_stu = song_stu;
		this.stu_id = stu_id;
		this.song_name = song_name;
		this.song_time = song_time;
		this.song_event = song_event;
		this.song_state = song_state;
	}

	public Music(int song_id, String song_stu, String stu_id, String song_name, Timestamp song_time, String song_event,
			String song_state) {
		super();
		this.song_id = song_id;
		this.song_stu = song_stu;
		this.stu_id = stu_id;
		this.song_name = song_name;
		this.song_time = song_time;
		this.song_event = song_event;
		this.song_state = song_state;
	}

	public int getSong_id() {
		return song_id;
	}

	public void setSong_id(int song_id) {
		this.song_id = song_id;
	}

	public String getSong_stu() {
		return song_stu;
	}

	public void setSong_stu(String song_stu) {
		this.song_stu = song_stu;
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getSong_name() {
		return song_name;
	}

	public void setSong_name(String song_name) {
		this.song_name = song_name;
	}

	public Timestamp getSong_time() {
		return song_time;
	}

	public void setSong_time(Timestamp song_time) {
		this.song_time = song_time;
	}

	public String getSong_event() {
		return song_event;
	}

	public void setSong_event(String song_event) {
		this.song_event = song_event;
	}

	public String getSong_state() {
		return song_state;
	}

	public void setSong_state(String song_state) {
		this.song_state = song_state;
	}

	public Music() {
		super();
	}

	
}
