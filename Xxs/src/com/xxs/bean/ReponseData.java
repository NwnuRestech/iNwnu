package com.xxs.bean;

public class ReponseData {
	private int status;
	private String data;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "ReponseData [status=" + status + ", data=" + data + "]";
	}
	
}
