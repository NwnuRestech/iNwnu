package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Type;

public interface TypeDao {
	//TODO 查询食物的所有类别
	public List<Type> selectAllTypes() throws SQLException;
	//lala
	//我是王浩，修改了一点点东西
}
