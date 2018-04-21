package com.xxs.dao;

import java.sql.SQLException;

import com.xxs.bean.Complaint;
import com.xxs.bean.Rest;

public interface ComplaintDao {
	//插入一条投诉
	int InsertConplain(Complaint com) throws SQLException;
	//根据stuname查询到stuid
	//根据restname查询到restid
	Rest selectRestidByRestname(String restname) throws SQLException;
	//根据restid查询出restname
	String selectRestnameByrestId(String restid) throws SQLException;
	//根据stu_id查询出该学生姓名
	String selectStunameBystuId(String stuid) throws SQLException;
	
}
