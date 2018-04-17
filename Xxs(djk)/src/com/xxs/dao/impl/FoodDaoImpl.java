package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.xxs.bean.Food;
import com.xxs.bean.Rest;
import com.xxs.bean.Stu;
import com.xxs.bean.Type;
import com.xxs.dao.FoodDao;
import com.xxs.utils.JDBCTools;

public class FoodDaoImpl implements FoodDao {

	@Override
	public int insertFood(Food food) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Object[] params = {food.getFood_id(), food.getFood_name(), food.getFood_restid(),
				food.getFood_money(),food.getFood_introduce(), food.getFood_type()};
		return queryRunner.update("insert into food values(?,?,?,?,?,?)", params);
	}
	@Override
	public List<Food> selectFoodByRestId(String restId) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from food where food_restid = ?", new BeanListHandler<Food>(Food.class), restId);
	}
	@Override
	public int updateFood(int food_id) throws SQLException {
		return 0;
	}
	@Override
	public int deleteFood(int food_id) throws SQLException{
		//TODO É¾³ýÊ³Îï
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.update("delect from food where food_id = ?",food_id);
	}
	@Override
	public Food selectFoodByFoodId(int food_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from food where food_id = ?", new BeanHandler<Food>(Food.class), food_id);
	}
	@Override
	public List<Food> selectFoodByName(String foodName) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from food where food_name like ?", new BeanListHandler<Food>(Food.class), "%"+foodName+"%");
	}
	public static void main(String[] args) throws SQLException {
		FoodDao foodDao = new FoodDaoImpl();
		List<Food> selectFoodByName = foodDao.selectFoodByTypeAndRest_id("304", 1);
		for (Food food : selectFoodByName) {
			System.out.println(food);
		}
	}
	@Override
	public List<Food> selectFoodByNameOrderMoney(String foodName) throws SQLException {
		return null;
	}
	@Override
	public List<Food> selectFoodByNameOrderHot(String foodName) throws SQLException {
		return null;
	}
	@Override
	public List<Type> selectFoodByType(String rest_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from type where(type_id = any(select food_type from food where food_restid = ?))", new BeanListHandler<Type>(Type.class), rest_id);
	}
	@Override
	public List<Food> selectFoodByTypeAndRest_id(String rest_id, int type) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select *from food where food_restid = ? and food_type = ?", new BeanListHandler<Food>(Food.class), rest_id, type);
	}
	
}
