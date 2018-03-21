package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Food;
import com.xxs.bean.Img;
import com.xxs.bean.Rest;

public interface IndexDao {
	//随机查询四个食物的名称，价格，商铺id及食物图片
	public List<Food> selectFoods() throws SQLException;
	//根据商铺id查询出该食物所属商铺的名称
	public Food selectRest_idByfood_id(int food_id) throws SQLException;
	//根据rest_id 查询出rest_name
	public Rest selectRestByrest_id(String rest_id) throws SQLException;
	//根据商铺的热度查询出热度最高的四个商铺的名称及商铺图片
	public List<Rest> selectRests() throws SQLException; 
	
	
	//食物：显示食物的名称，价格，所属商铺，食物的图片（食物的类别，例如：若食物是汤类，则显示类别为汤类的图片）
	//商铺：显示商铺的名称，图片
	//根据rest_id查询出该商铺的图片
	public Img selectImgByRestId(String rest_id) throws SQLException;
	//根据食物的类别查询出该类别的图片
	public Img selectImgBytype(int type) throws SQLException;

}
