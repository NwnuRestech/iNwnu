package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.RestEvaluation;
import com.xxs.bean.rest_evaluation;

public interface RestEvaluationDao {
	//查询一个店铺的所有评价的数目
	public Object selectRestEvaluationsByRest_id(String rest_id) throws SQLException;
	//根据stu_id查询出该用户的昵称 ，stuDao中已写
	//根据stu_id查询出该用户的头像，stuDao中已写
	//查询一个店铺的所有评价
	public List<RestEvaluation> selectAllRestEvaluations(String rest_id) throws SQLException;
	//评价商铺
	public int insertRestEvaluation(RestEvaluation restEvaluation) throws SQLException;

	
}
