package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Img;
import com.xxs.bean.Rest;

public interface RestDao {
	//新建一个商户
	public int insertRest(Rest rest) throws SQLException;
	//根据商户编号和密码查询商户
	public Rest selectRest(String rest_id, String rest_password) throws SQLException;
	//根据商户编号查询商户
	public Rest selectRestByid(String rest_id) throws SQLException;
	//展示商铺的信息
	public Rest selectRest(String rest_id) throws SQLException;
	//展示商铺的头像
	public Img selectImgByRest_id(String rest_id) throws SQLException;
//	根据loc查询商铺
	public List<Rest> selectRestByLoc(int rest_loc) throws SQLException;
	
}