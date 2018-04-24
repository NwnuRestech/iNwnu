package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Food;
import com.xxs.bean.Type;

public interface FoodDao {
	//新增一个食物
	public int insertFood(Food food) throws SQLException;
	//查询一个商铺所有的食物
	public List<Food> selectFoodByRestId(String restId) throws SQLException;
	//TODO  删除，修改食物
	//删除一个菜品
	public int deleteFood(int food_id) throws SQLException;
	//修改菜品价格
	public int updateFood(int food_id,String newMoney) throws SQLException;
	//TODO 查询食物通过id 1.15增加
	public Food selectFoodByFoodId(int food_id) throws SQLException;
	//通过食物名查找食物并通过价格排序
	public List<Food> selectFoodByNameOrderMoney(String foodName) throws SQLException;
	//通过食物名查找食物并通过热度排序
	public List<Food> selectFoodByNameOrderHot(String foodName) throws SQLException;
	//通过食物名查找食物并默认排序
	public List<Food> selectFoodByName(String foodName) throws SQLException;
	//查询一个店铺所有菜的类别
	public List<Type> selectFoodByType(String rest_id) throws SQLException;
	//根据rest_id和type查询食物
	public List<Food> selectFoodByTypeAndRest_id(String rest_id, int type) throws SQLException;
	//查询一个店铺菜单（所有菜品）
	public List<Food> slectMenuByRest_id(String rest_id) throws SQLException;
	//分页
	public List<Food> selectFoodsWithPage(int page ,int rows) throws SQLException;//page 页数 , rows 每页显示的记录数

}
