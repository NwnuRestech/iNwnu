package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Indent;

public interface IndentDao {
	//添加一个订单
	public int insertIndent(Indent indent) throws SQLException;
	//根据订单id查询一个订单
	public Indent selectIndentById(String indent_id) throws SQLException;
	//拒接一个订单，修改订单状态为-1
	public int noupdateIndent(Long indent_id)throws SQLException;
	//接收订单时，修改订单状态为2
	public int updateIndent2(Long indent_id)throws SQLException;
	//做完一个订单，修改订单状态为3
	int updateIndent3(Long indent_id) throws SQLException;
	//完成一个订单，修改订单状态为4
	public int updateIndent4(Long indent_id)throws SQLException;
	
	//商铺操作
	// TODO 查询1，2，3，4，5，6，7，8
	//查询1:商铺查询状态为1的所有订单(待接收的订单，时间排序)
	public List<Indent> RestSelectIndent_StatIs1(String rest_id) throws SQLException;
	//查询2:商铺查询状态为2的所有订单(商铺待做好的订单)
	public List<Indent> RestSelectIndent_StatIs2(String rest_id) throws SQLException;
	//查询3:商铺查询状态为3的所有订单(待用户确认的订单)
	public List<Indent> RestSelectIndent_StatIs3(String rest_id) throws SQLException;
	//查询4:商铺查询状态为1.2.3.4的订单(所有订单，时间排序)
	public List<Indent> RestSelectAllindents(String rest_id) throws SQLException;
	
	//用户操作
	//查询5:用户查询状态为2和3的所有订单(用户待取餐的订单，时间排序)
	public List<Indent> StuSelectIndent_StatIs2and3(String stu_id) throws SQLException;
	//查询6:用户查询状态为4的订单(待评价的订单，时间排序)
	public List<Indent> StuSelectIndent_StatIs4(String stu_id) throws SQLException;
	//查询7:用户查询状态为1的所有订单(商铺待接收的订单，时间排序)
	public List<Indent> StuSelectIndent_StatIs1(String stu_id) throws SQLException;
	//查询8:用户查询状态为1.2.3.4的订单(所有订单，时间排序)
	public List<Indent> StuSelectAllindents(String stu_id) throws SQLException;

}
