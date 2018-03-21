package com.xxs.dao.impl;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import com.xxs.bean.Stu;

public class StuDaoImpTest {	
	StuDaoImpl stuDaoImpl = new StuDaoImpl();
	@Test
	public void testInsertStu() throws SQLException {
		int insertStu = stuDaoImpl.insertStu(new Stu("1", "aa", "bb", "1366", "123", 0, 0, "beijin", "0", 0));
		System.out.println(insertStu);
	}

	@Test
	public void testSelectStu() {
	}

}
