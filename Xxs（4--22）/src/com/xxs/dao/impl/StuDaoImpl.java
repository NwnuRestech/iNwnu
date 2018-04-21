package com.xxs.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.xxs.utils.JDBCTools;
import com.xxs.bean.Img;
import com.xxs.bean.Stu;
import com.xxs.dao.StuDao;

public class StuDaoImpl implements StuDao {
	@Override
	public int insertStu(Stu stu) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Object[] params = {stu.getStu_id(), stu.getStu_name(),stu.getStu_nickname(),stu.getStu_tel(),stu.getStu_password(),stu.getStu_grade(),stu.getStu_credit(),stu.getStu_dorm(),stu.getStu_dept(),stu.getStu_money()};
		return queryRunner.update("insert into stu values(?,?,?,?,?,?,?,?,?,?)", params);
	}

	@Override
	public Stu selectStu(String stu_id, String stu_password) throws SQLException{
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		Stu query = qr.query("select *from stu where stu_id = ? and stu_password = ?", new BeanHandler<Stu>(Stu.class), stu_id, stu_password);
		return query;
	}
	
	@Override
	public int updateStuInfo(String nickname, String tel, String dorm,String password, String dept, String stu_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.update("update stu set stu_nickname = ?,stu_tel = ?,stu_dorm = ?,stu_password = ?,stu_dept = ? where stu_id = ?", nickname,tel,password,dorm,dept,stu_id);
	}

	@Override
	public Stu selectStuByNickname(String nickname) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from stu where stu_nickname = ?", new BeanHandler<Stu>(Stu.class),nickname);
	}

	@Override
	public Stu selectStuByStu_id(String stu_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from stu where stu_id = ?", new BeanHandler<Stu>(Stu.class),stu_id);
	}

	@Override
	public Img selectImgByStu_id(String stu_id) throws SQLException {
		QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
		return qr.query("select * from img where img_type = ? and img_espid = ?", new BeanHandler<Img>(Img.class),0,stu_id);
	}


}
