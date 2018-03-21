package com.xxs.dao.impl;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import com.xxs.bean.Rest;
import com.xxs.dao.RestDao;

public class RestDaoImplTest {
	
	RestDao restDao = new RestDaoImpl();
	@Test
	public void testInsertRest() {
	}

	@Test
	public void testSelectRest() throws SQLException {
		Rest selectRest = restDao.selectRest("2", "123");
		System.out.println(selectRest.getRest_id());
		System.out.println(selectRest.toString());
	}

}
