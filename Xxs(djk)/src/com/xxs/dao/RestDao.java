package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Img;
import com.xxs.bean.Rest;

public interface RestDao {
	//�½�һ���̻�
	public int insertRest(Rest rest) throws SQLException;
	//�����̻���ź������ѯ�̻�
	public Rest selectRest(String rest_id, String rest_password) throws SQLException;
	//�����̻���Ų�ѯ�̻�
	public Rest selectRestByid(String rest_id) throws SQLException;
	//չʾ���̵���Ϣ
	public Rest selectRest(String rest_id) throws SQLException;
	//չʾ���̵�ͷ��
	public Img selectImgByRest_id(String rest_id) throws SQLException;
//	����loc��ѯ����
	public List<Rest> selectRestByLoc(int rest_loc) throws SQLException;
	
}