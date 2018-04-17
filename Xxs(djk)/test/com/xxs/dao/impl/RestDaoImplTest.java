package com.xxs.dao.impl;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import com.xxs.bean.Rest;
import com.xxs.dao.IndexDao;
import com.xxs.dao.RestDao;

public class RestDaoImplTest {
	
	RestDao restDao = new RestDaoImpl();
	IndexDao indexDao = new IndexDaoImpl();
	@Test
	public void testInsertRest() {
	}

	@Test
	public void testSelectRest() throws SQLException {
		Rest selectRest = restDao.selectRest("2", "123");
		System.out.println(selectRest.getRest_id());
		System.out.println(selectRest.toString());
	}
	@Test
	public void testSelectRests() throws SQLException{
		List<Rest> rests = indexDao.selectRests();
		for(Rest item:rests){
			System.out.println(item);
		}
	
	}
}
