package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

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
	//��ѯ������δ�����Ͷ��;result=1:�Դ���;result=0:δ����
	List<Complaint> selectAllComplaints() throws SQLException;
	//��ҳ��ѯ
	List<Complaint> selectAllComplaintsWithPage(int page,int rows) throws SQLException;
	//��ѯ����δ�����Ͷ��
	long selectCount()throws SQLException;
	//��ѯĳ���û�Ϊ�����Ͷ��
	List<Complaint> selectAllComsIs0(String stu_id)throws SQLException;
}
