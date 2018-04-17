package com.xxs.dao.impl;


import java.util.List;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import com.xxs.bean.Indent;
import com.xxs.dao.IndentDao;
import com.xxs.utils.JDBCTools;

public class IndentDaoImpl implements IndentDao {

	@Override
	public int insertIndent(Indent indent) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Object[] params = {null,indent.getIndent_money(), indent.getIndent_stat(), indent.getFood_id(),indent.getRest_id(),indent.getStu_id(),indent.getFood_num(),indent.getIndent_remk(),indent.getIndent_foodtime(), indent.getGet_foodtime()};
		return queryRunner.update("insert into indent values(?,?,?,?,?,?,?,?,?,?)", params);
	}

	@Override
	public int updateIndent4(Long indent_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.update("update indent set indent_stat = 4 where indent_id = ?", indent_id);
	}

	@Override
	public int updateIndent2(Long indent_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.update("update indent set indent_stat = 2 where indent_id = ?", indent_id);		
	}
	@Override
	public int updateIndent3(Long indent_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.update("update indent set indent_stat = 3 where indent_id = ?", indent_id);		
	}

	@Override
	public int noupdateIndent(Long indent_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.update("update indent set indent_stat = -1 where indent_id = ?", indent_id);
	}

	@Override
	public List<Indent> RestSelectIndent_StatIs1(String rest_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);//时间排序:select * from indent where rest_id = ? and indent_stat = ? order by indent_foodtime desc
		return qr.query("select * from indent where rest_id = ? and indent_stat = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),rest_id,1);
	}

	@Override
	public List<Indent> RestSelectIndent_StatIs2(String rest_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where rest_id = ? and indent_stat = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),rest_id,2);
	}

	@Override
	public List<Indent> RestSelectIndent_StatIs3(String rest_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where rest_id = ? and indent_stat = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),rest_id,3);
	}

	@Override
	public List<Indent> RestSelectAllindents(String rest_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where rest_id = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),rest_id);
	}
	
	//学生订单查询
	@Override
	public List<Indent> StuSelectIndent_StatIs2and3(String stu_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where stu_id = ? and (indent_stat = ? or indent_stat =?) order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),stu_id,2,3);
	}

	@Override
	public List<Indent> StuSelectIndent_StatIs4(String stu_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where stu_id = ? and indent_stat = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),stu_id,4);
	}

	@Override
	public List<Indent> StuSelectIndent_StatIs1(String stu_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where stu_id = ? and indent_stat = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),stu_id,1);
	}

	@Override
	public List<Indent> StuSelectAllindents(String stu_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where stu_id = ? order by indent_foodtime desc", new BeanListHandler<Indent>(Indent.class),stu_id);
	}
	public static void main(String[] args) throws SQLException {
		IndentDaoImpl indentDao = new IndentDaoImpl();
		List<Indent> stuSelectAllindents = indentDao.StuSelectIndent_StatIs2and3("1");
		System.out.println(stuSelectAllindents);
	}

	@Override
	public Indent selectIndentById(String indent_id) throws SQLException {
		ComboPooledDataSource ds = JDBCTools.getDataSource();
		QueryRunner qr = new QueryRunner(ds);
		return qr.query("select * from indent where indent_id = ?", new BeanHandler<Indent>(Indent.class),indent_id);
	}

}
