package com.xxs.dao;

import java.sql.SQLException;

import com.xxs.bean.FoodKey;

public interface FoodKeyDao {
	//新增取餐码
	public int insertFoodKey(FoodKey foodKey)throws SQLException;
	//查询取餐码
	public FoodKey selectFoodKey(int foodDate, String restId, String foodKeyKey) throws SQLException;
	//根据订单id查询取餐码
	public FoodKey selectFoodkeyByIndentId(long indentId) throws SQLException;
}
