package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Indent;

public interface IndentDao {
	//���һ������
	public int insertIndent(Indent indent) throws SQLException;
	//���ݶ���id��ѯһ������
	public Indent selectIndentById(String indent_id) throws SQLException;
	//�ܽ�һ���������޸Ķ���״̬Ϊ-1
	public int noupdateIndent(Long indent_id)throws SQLException;
	//���ն���ʱ���޸Ķ���״̬Ϊ2
	public int updateIndent2(Long indent_id)throws SQLException;
	//����һ���������޸Ķ���״̬Ϊ3
	int updateIndent3(Long indent_id) throws SQLException;
	//���һ���������޸Ķ���״̬Ϊ4
	public int updateIndent4(Long indent_id)throws SQLException;
	
	//���̲���
	// TODO ��ѯ1��2��3��4��5��6��7��8
	//��ѯ1:���̲�ѯ״̬Ϊ1�����ж���(�����յĶ�����ʱ������)
	public List<Indent> RestSelectIndent_StatIs1(String rest_id) throws SQLException;
	//��ѯ2:���̲�ѯ״̬Ϊ2�����ж���(���̴����õĶ���)
	public List<Indent> RestSelectIndent_StatIs2(String rest_id) throws SQLException;
	//��ѯ3:���̲�ѯ״̬Ϊ3�����ж���(���û�ȷ�ϵĶ���)
	public List<Indent> RestSelectIndent_StatIs3(String rest_id) throws SQLException;
	//��ѯ4:���̲�ѯ״̬Ϊ1.2.3.4�Ķ���(���ж�����ʱ������)
	public List<Indent> RestSelectAllindents(String rest_id) throws SQLException;
	
	//�û�����
	//��ѯ5:�û���ѯ״̬Ϊ2��3�����ж���(�û���ȡ�͵Ķ�����ʱ������)
	public List<Indent> StuSelectIndent_StatIs2and3(String stu_id) throws SQLException;
	//��ѯ6:�û���ѯ״̬Ϊ4�Ķ���(�����۵Ķ�����ʱ������)
	public List<Indent> StuSelectIndent_StatIs4(String stu_id) throws SQLException;
	//��ѯ7:�û���ѯ״̬Ϊ1�����ж���(���̴����յĶ�����ʱ������)
	public List<Indent> StuSelectIndent_StatIs1(String stu_id) throws SQLException;
	//��ѯ8:�û���ѯ״̬Ϊ1.2.3.4�Ķ���(���ж�����ʱ������)
	public List<Indent> StuSelectAllindents(String stu_id) throws SQLException;

}
