package com.xxs.dao;

import java.sql.SQLException;

import com.xxs.bean.FoodKey;

public interface FoodKeyDao {
	//����ȡ����
	public int insertFoodKey(FoodKey foodKey)throws SQLException;
	//��ѯȡ����
	public FoodKey selectFoodKey(int foodDate, String restId, String foodKeyKey) throws SQLException;
	//���ݶ���id��ѯȡ����
	public FoodKey selectFoodkeyByIndentId(long indentId) throws SQLException;
}
