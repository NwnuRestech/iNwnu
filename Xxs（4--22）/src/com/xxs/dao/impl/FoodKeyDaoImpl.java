package com.xxs.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.xxs.bean.Food;
import com.xxs.bean.FoodKey;
import com.xxs.dao.FoodKeyDao;
import com.xxs.utils.JDBCTools;

public class FoodKeyDaoImpl implements FoodKeyDao{

	@Override
	public int insertFoodKey(FoodKey foodKey) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Object[] params = {foodKey.getFoodkey_id(), foodKey.getFoodkey_key(), foodKey.getfoodkey_date(), foodKey.getFoodkey_restid()};
		return queryRunner.update("insert into foodkey values(?,?,?,?)", params);
	}

	@Override
	public FoodKey selectFoodKey(int foodDate, String restId, String foodKeyKey) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from foodKey where foodkey_key = ? and foodkey_date = ? and foodkey_restid = ?", 
				new BeanHandler<FoodKey>(FoodKey.class), foodKeyKey, foodDate, restId);
	}
	
	
	public static void main(String[] args) throws SQLException {
		FoodKeyDao foodKeyDao = new FoodKeyDaoImpl();
//		System.out.println("fjiasodfio");
//		System.out.println(foodKeyDao.insertFoodKey(new FoodKey(1, "smg", 20161111, "1")));
//		System.out.println(foodKeyDao.selectFoodKey(201111, "1", "smg"));
		System.out.println(foodKeyDao.selectFoodkeyByIndentId(3));
	}

	@Override
	public FoodKey selectFoodkeyByIndentId(long indentId) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from foodKey where foodkey_id = ?", 
				new BeanHandler<FoodKey>(FoodKey.class), indentId);
	}
}
