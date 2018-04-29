package com.xxs.test;

import java.sql.SQLException;

import com.xxs.dao.FoodDao;
<<<<<<< HEAD
import com.xxs.dao.impl.FoodDaoImpl;
=======
import com.xxs.dao.MusicDao;
import com.xxs.dao.impl.FoodDaoImpl;
import com.xxs.dao.impl.MusicDaoImpl;
>>>>>>> djk

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
<<<<<<< HEAD
=======
	@org.junit.Test
	public void fun2(){
		MusicDao musicDao = new MusicDaoImpl();
		try {
			long res = musicDao.selectCount();
			System.out.println(res);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
>>>>>>> djk
}
