package com.xxs.dao;

import java.sql.SQLException;

import com.xxs.bean.Img;
import com.xxs.bean.Stu;

public interface StuDao {
	//�½�һ��ѧ��
	public int insertStu(Stu stu) throws SQLException;
	//����ѧ�ź������ѯѧ��
	public Stu selectStu(String stu_id, String stu_password) throws SQLException;
	
	
	//����ѧ��id�޸ĸ�����Ϣ(���޸� �ǳƣ��绰�����ᣬѧԺ)
	//TODO �޸�ѧ����Ϣ
	public int updateStuInfo(String nickname,String tel,String dorm,String password,String dept,String stu_id) throws SQLException;		//TODO �ж��ǳ��Ƿ��ظ�
	public Stu selectStuByNickname(String nickname) throws SQLException;
	//TODO չʾѧ��������Ϣ
	public Stu selectStuByStu_id(String stu_id) throws SQLException;
	//TODO չʾѧ��ͷ��
	public Img selectImgByStu_id(String stu_id) throws SQLException;

}
