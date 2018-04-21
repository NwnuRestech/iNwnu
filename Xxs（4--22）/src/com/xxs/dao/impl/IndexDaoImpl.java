package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.xxs.bean.Food;
import com.xxs.bean.Img;
import com.xxs.bean.Rest;
import com.xxs.dao.IndexDao;
import com.xxs.utils.JDBCTools;

public class IndexDaoImpl implements IndexDao {

	@Override
	public List<Food> selectFoods() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from food order by rand() limit 4 ", new BeanListHandler<Food>(Food.class));		
	}

	@Override
	public List<Rest> selectRests() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from rest order by rest_hot desc limit 4 ", new BeanListHandler<Rest>(Rest.class));	
	}
	public static void main(String[] args) throws SQLException {
		IndexDaoImpl idi = new IndexDaoImpl();
		System.out.println(idi.selectRests());
	}

	@Override
	public Food selectRest_idByfood_id(int food_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from food where food_id = ?", new BeanHandler<Food>(Food.class),food_id);
	}

	@Override
	public Rest selectRestByrest_id(String rest_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from rest where rest_id = ?", new BeanHandler<Rest>(Rest.class),rest_id);
	}

	@Override
	public Img selectImgBytype(int type) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from img where img_type = ?", new BeanHandler<Img>(Img.class),type);
	}

	@Override
	public Img selectImgByRestId(String rest_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from img where img_type = ? and img_espid = ? ", new BeanHandler<Img>(Img.class),7,rest_id); 
	}

}
