package com.xxs.dao;

import java.sql.SQLException;

import com.xxs.bean.Complaint;
import com.xxs.bean.Rest;

public interface ComplaintDao {
	//����һ��Ͷ��
	int InsertConplain(Complaint com) throws SQLException;
	//����stuname��ѯ��stuid
	//����restname��ѯ��restid
	Rest selectRestidByRestname(String restname) throws SQLException;
	//����restid��ѯ��restname
	String selectRestnameByrestId(String restid) throws SQLException;
	//����stu_id��ѯ����ѧ������
	String selectStunameBystuId(String stuid) throws SQLException;
	
}
