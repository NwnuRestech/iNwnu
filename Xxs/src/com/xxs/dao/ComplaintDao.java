package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

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
	//查询出所有未处理的投诉;result=1:以处理;result=0:未处理
	List<Complaint> selectAllComplaints() throws SQLException;
	//分页查询
	List<Complaint> selectAllComplaintsWithPage(int page,int rows) throws SQLException;
	//查询所有未处理的投诉
	long selectCount()throws SQLException;
	//查询某个用户为处理的投诉
	List<Complaint> selectAllComsIs0(String stu_id)throws SQLException;
}
