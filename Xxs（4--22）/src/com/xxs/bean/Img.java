package com.xxs.bean;

public class Img {
	private int img_id;//ͼƬid
	private String img_loc;//ͼƬ·��id
	private int img_type;//ͼƬ����id������7    ��ʳ��2    �Ƿ���3   ��ͣ�4     ���ϣ�5      ���ˣ�6       �û���0     ���̣�1��
	private String img_espid;//ʹ����id
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
