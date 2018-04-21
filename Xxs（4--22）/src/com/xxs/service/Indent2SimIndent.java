package com.xxs.service;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.xxs.bean.Food;
import com.xxs.bean.FoodKey;
import com.xxs.bean.Indent;
import com.xxs.bean.SimIndent;
import com.xxs.dao.FoodDao;
import com.xxs.dao.FoodKeyDao;
import com.xxs.dao.impl.FoodDaoImpl;
import com.xxs.dao.impl.FoodKeyDaoImpl;

public class Indent2SimIndent {
	
	public SimIndent indent2SimIndent(Indent indent) throws NumberFormatException, SQLException{
		FoodKeyDao foodKeyDao = new FoodKeyDaoImpl();
		FoodDao foodDao = new FoodDaoImpl();
		String newKey;
		
		
		FoodKey foodKey = foodKeyDao.selectFoodkeyByIndentId(indent.getIndent_id());
		if(foodKey == null){
			//将日期转化为int类型
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			Timestamp food_time = indent.getGet_foodtime();
			Date food_date = new Date(food_time.getTime());
			String format = sdf.format(food_date);
			do{
				//生成随机码
				newKey = UUID.randomUUID().toString().toUpperCase().substring(0,3);
				System.out.println(newKey);
			}while(foodKeyDao.selectFoodKey(Integer.valueOf(format), indent.getRest_id(), newKey) != null);
			//TODO long to int bug
			foodKeyDao.insertFoodKey(new FoodKey(new Long(indent.getIndent_id()).intValue() , newKey, Integer.valueOf(format), indent.getRest_id()));
		}else{
			newKey = foodKey.getFoodkey_key();
		}
		Food food = foodDao.selectFoodByFoodId(indent.getFood_id());
		return new SimIndent(indent.getIndent_id(), food.getFood_name(), indent.getFood_num(), indent.getIndent_stat()+"", newKey, indent.getIndent_money(), Double.valueOf(indent.getIndent_money()) * Double.valueOf(indent.getFood_num()) + "");
	}
	public List<SimIndent> indent2SimIndent(List<Indent> indents) throws NumberFormatException, SQLException{
		List<SimIndent> simIndents = new ArrayList<>();
		for (Indent indent : indents) {
			simIndents.add(indent2SimIndent(indent));
		}
		return simIndents;
	}
	
	
	
//	public static void main(String[] args) throws SQLException {
//		IndentDaoImpl indentDaoImpl = new IndentDaoImpl();
//		List<Indent> indents = indentDaoImpl.StuSelectAllindents(123+"");
//		Indent indent = indents.get(0);
//		System.out.println(indent);
//		SimIndent simIndent = new Indent2SimIndent().indent2SimIndent(indent);
//		System.out.println(simIndent.toString());
//	}
	
}
