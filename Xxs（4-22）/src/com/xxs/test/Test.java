package com.xxs.test;

import java.sql.SQLException;

import com.xxs.dao.FoodDao;
import com.xxs.dao.impl.FoodDaoImpl;

public class Test {
	@org.junit.Test
	public void fun1(){
		FoodDao foodDao = new FoodDaoImpl();
		try {
			int res = foodDao.deleteFood(743);
			System.out.println("res:"+res);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
