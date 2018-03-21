package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import com.xxs.bean.Food;
import com.xxs.dao.FoodDao;

public class FoodDaoImplTest {
	
	FoodDao foodDao = new FoodDaoImpl();
	@Test
	public void testInsertFood() throws SQLException {
		int insertFood = foodDao.insertFood(new Food(2, "1", "1", "1", "1", 1));
		System.out.println(insertFood);
	}
	@Test
	public void selectFoodByRestId() throws SQLException {
		List<Food> selectFoodByRestId = foodDao.selectFoodByRestId("1");
		for (Food food : selectFoodByRestId) {
			System.out.println(food.toString());
		}
	}

}
