package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Food;
import com.xxs.dao.FoodDao;
import com.xxs.dao.impl.FoodDaoImpl;

@WebServlet("/TestController")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FoodDao foodDao = new FoodDaoImpl();
		try {
			List<Food> food = foodDao.selectFoodByRestId("1");
			request.setAttribute("food", food);
			request.getRequestDispatcher("NewFile.jsp").forward(request,
					response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
