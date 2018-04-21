package com.xxs.utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;

public class JDBCTools {
	/*C3P0 方法获取连接
	 * 
	 * private static ComboPooledDataSource dataSource = new ComboPooledDataSource();
	public static ComboPooledDataSource getDataSource(){
		return dataSource;
	}
	*/
	
	private static Properties ps = new Properties();
	private static DataSource dataSource = null;
	
	public static  DataSource getDataSource(){
		if(dataSource == null)
			try {
				dataSource = DruidDataSourceFactory.createDataSource(getPs());
			} catch (Exception e) {
				e.printStackTrace();
			}
		return dataSource;
	}
	private static Properties getPs() {
		try {
			if(ps.size() < 2){
				ps.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("DBProperties.properties"));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("ps:"+ps.toString());
		return ps;
	}
	
	public static Connection getConnection(){
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
