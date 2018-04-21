package com.xxs.bean;

public class Img {
	private int img_id;//图片id
	private String img_loc;//图片路径id
	private int img_type;//图片种类id（汤：7    面食：2    盖饭：3   快餐：4     饮料：5      炒菜：6       用户：0     商铺：1）
	private String img_espid;//使用者id
	public int getImg_id() {
		return img_id;
	}
	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}
	public String getImg_loc() {
		return img_loc;
	}
	public void setImg_loc(String img_loc) {
		this.img_loc = img_loc;
	}
	public int getImg_type() {
		return img_type;
	}
	public void setImg_type(int img_type) {
		this.img_type = img_type;
	}
	public String getImg_espid() {
		return img_espid;
	}
	public void setImg_espid(String img_espid) {
		this.img_espid = img_espid;
	}
	public Img(int img_id, String img_loc, int img_type, String img_espid) {
		super();
		this.img_id = img_id;
		this.img_loc = img_loc;
		this.img_type = img_type;
		this.img_espid = img_espid;
	}
	public Img() {
		super();
	}
	@Override
	public String toString() {
		return "Img [img_id=" + img_id + ", img_loc=" + img_loc + ", img_type=" + img_type + ", img_espid=" + img_espid
				+ "]";
	}
	
}
