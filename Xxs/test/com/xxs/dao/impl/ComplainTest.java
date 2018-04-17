package com.xxs.dao.impl;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

import com.xxs.bean.Complaint;
import com.xxs.bean.Rest;
import com.xxs.dao.ComplaintDao;

public class ComplainTest {
	ComplaintDao complaintDao = new ComplaintDaoImpl();
	@Test
	public void testSelectRestidByRestname() throws SQLException{
		String restname = "djk";
		Rest rest = complaintDao.selectRestidByRestname(restname);
		System.out.println(rest);
	}
	
	@Test
	public void testInsertConplain() throws SQLException{
		int id =1;
		String stu_id = "1";
		String rest_id = "111";
		String comp_event = "nanchi";
		String sug_solution = "man";
		String comp_time = "2018-10-15 23:15:32";
		Timestamp time = Timestamp.valueOf(comp_time);
		int comp_state = 1;
		Complaint com = new Complaint(id,stu_id, rest_id, comp_event, sug_solution, time, comp_state);
		int i = complaintDao.InsertConplain(com);
		if(i==1){
			System.out.println("1");
		}
		
	}
}
