package com.xxs.dao;

import java.sql.SQLException;

import com.xxs.bean.Img;
import com.xxs.bean.Stu;

public interface StuDao {
	//新建一个学生
	public int insertStu(Stu stu) throws SQLException;
	//根据学号和密码查询学生
	public Stu selectStu(String stu_id, String stu_password) throws SQLException;
	
	
	//根据学生id修改个人信息(可修改 昵称，电话，宿舍，学院)
	//TODO 修改学生信息
	public int updateStuInfo(String nickname,String tel,String dorm,String password,String dept,String stu_id) throws SQLException;		//TODO 判断昵称是否重复
	public Stu selectStuByNickname(String nickname) throws SQLException;
	//TODO 展示学生个人信息
	public Stu selectStuByStu_id(String stu_id) throws SQLException;
	//TODO 展示学生头像
	public Img selectImgByStu_id(String stu_id) throws SQLException;

}
