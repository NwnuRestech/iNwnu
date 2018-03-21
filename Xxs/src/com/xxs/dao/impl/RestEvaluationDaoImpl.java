package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.xxs.bean.RestEvaluation;
import com.xxs.bean.rest_evaluation;
import com.xxs.dao.RestEvaluationDao;
import com.xxs.utils.JDBCTools;

public class RestEvaluationDaoImpl implements RestEvaluationDao {
	
	@Override
	public Object selectRestEvaluationsByRest_id(String rest_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		Object query = qr.query("select count(*) from rest_evaluation where rest_id = ?", new ScalarHandler(),rest_id);
		return query;
	}

	@Override
	public List<RestEvaluation> selectAllRestEvaluations(String rest_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from rest_evaluation where rest_id = ?", new BeanListHandler<RestEvaluation>(RestEvaluation.class),rest_id);
	}

	@Override
	public int insertRestEvaluation(RestEvaluation restEvaluation) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.update("insert into rest_evaluation values(null,?,?,?,?,?)",restEvaluation.getStu_id(),restEvaluation.getRest_id(),
				restEvaluation.getEval_content(),restEvaluation.getEval_time(),restEvaluation.getEval_fraction());
	}
	
	

}
