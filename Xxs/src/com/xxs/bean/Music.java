package com.xxs.bean;

import java.sql.Timestamp;

public class Music {
	private int songid;
	private String songpeople;
	private String songname;
	private Timestamp songtime;
	private String songmessage;
	private boolean songstatus;
	public boolean isSongstatus() {
		return songstatus;
	}
	public void setSongstatus(boolean songstatus) {
		this.songstatus = songstatus;
	}
	public int getSongid() {
		return songid;
	}
	public void setSongid(int songid) {
		this.songid = songid;
	}
	public String getSongpeople() {
		return songpeople;
	}
	public void setSongpeople(String songpeople) {
		this.songpeople = songpeople;
	}
	public String getSongname() {
		return songname;
	}
	public void setSongname(String songname) {
		this.songname = songname;
	}
	public Timestamp getSongtime() {
		return songtime;
	}
	public void setSongtime(Timestamp songtime) {
		this.songtime = songtime;
	}
	public String getSongmessage() {
		return songmessage;
	}
	public void setSongmessage(String songmessage) {
		this.songmessage = songmessage;
	}
	public Music(int songid, String songpeople, String songname, Timestamp songtime, String songmessage,
			boolean songstatus) {
		super();
		this.songid = songid;
		this.songpeople = songpeople;
		this.songname = songname;
		this.songtime = songtime;
		this.songmessage = songmessage;
		this.songstatus = songstatus;
	}
	
	public Music(String songpeople, String songname, Timestamp songtime, String songmessage, boolean songstatus) {
		super();
		this.songpeople = songpeople;
		this.songname = songname;
		this.songtime = songtime;
		this.songmessage = songmessage;
		this.songstatus = songstatus;
	}
	@Override
	public String toString() {
		return "Music [songid=" + songid + ", songpeople=" + songpeople + ", songname=" + songname + ", songtime="
				+ songtime + ", songmessage=" + songmessage + ", songstatus=" + songstatus + "]";
	}
	public Music() {
		super();
	}

	
}
