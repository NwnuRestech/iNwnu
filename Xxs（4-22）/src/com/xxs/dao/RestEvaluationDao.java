package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.RestEvaluation;
import com.xxs.bean.rest_evaluation;

public interface RestEvaluationDao {
	//��ѯһ�����̵��������۵���Ŀ
	public Object selectRestEvaluationsByRest_id(String rest_id) throws SQLException;
	//����stu_id��ѯ�����û����ǳ� ��stuDao����д
	//����stu_id��ѯ�����û���ͷ��stuDao����д
	//��ѯһ�����̵���������
	public List<RestEvaluation> selectAllRestEvaluations(String rest_id) throws SQLException;
	//��������
	public int insertRestEvaluation(RestEvaluation restEvaluation) throws SQLException;

	
}
