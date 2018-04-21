package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.xxs.bean.Type;
import com.xxs.dao.TypeDao;
import com.xxs.utils.JDBCTools;

public class TypeDaoImpl implements TypeDao {

	@Override
	public List<Type> selectAllTypes() throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from type", new BeanListHandler<Type>(Type.class));
	}

}
