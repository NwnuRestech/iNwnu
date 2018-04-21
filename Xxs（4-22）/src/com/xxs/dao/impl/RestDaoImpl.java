package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.xxs.bean.Img;
import com.xxs.bean.Indent;
import com.xxs.bean.Rest;
import com.xxs.dao.RestDao;
import com.xxs.utils.JDBCTools;

public class RestDaoImpl implements RestDao {

	@Override
	public int insertRest(Rest rest)  throws SQLException{
		
		return 0;
	}
	
	@Override
	public Rest selectRest(String rest_id, String rest_password) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		Rest query = qr.query("select *from rest where rest_id = ? and rest_password = ?", new BeanHandler<Rest>(Rest.class), rest_id, rest_password);
		return query;
	}
	@Override
	public Rest selectRestByid(String rest_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		Rest query = qr.query("select *from rest where rest_id = ?", new BeanHandler<Rest>(Rest.class), rest_id);
		return query;
	}
	@Override
	public Rest selectRest(String rest_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from rest where rest_id = ?", new BeanHandler<Rest>(Rest.class),rest_id);
	}

	@Override
	public Img selectImgByRest_id(String rest_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());// img_type == 1 为商铺的头像
		return qr.query("select * from img where img_type = ? and img_espid = ?", new BeanHandler<Img>(Img.class),1,rest_id);
	}
	@Override
	public List<Rest> selectRestByLoc(int rest_loc) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from rest where rest_loc = ?", new BeanListHandler<Rest>(Rest.class),rest_loc);
	}
//	public static void main(String[] args) throws SQLException {
//		List<Rest> selectRestByLoc = new RestDaoImpl().selectRestByLoc(3);
//		for (Rest rest : selectRestByLoc) {
//			System.out.println(rest);
//		}
//	}


}
