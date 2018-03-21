package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xxs.bean.Food;
import com.xxs.bean.Rest;
import com.xxs.dao.FoodDao;
import com.xxs.dao.RestDao;
import com.xxs.dao.impl.FoodDaoImpl;
import com.xxs.dao.impl.RestDaoImpl;

@WebServlet("/FoodDetailController")
public class FoodDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FoodDetailController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String type = "";
		try{
			type = session.getAttribute("type").toString();
		}catch(Exception e){
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
			return;
		}
		if(type.equals("")){
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
			return;
		}
		System.out.println(type);
		String food_idStr = request.getParameter("food_id");
		int food_id = new Integer(food_idStr);
		FoodDao foodDao = new FoodDaoImpl();
		try {
			Food food = foodDao.selectFoodByFoodId(food_id);
			request.setAttribute("food_id", food_id);
			request.setAttribute("food_name", food.getFood_name());
			request.setAttribute("food_money", food.getFood_money());
			request.setAttribute("food_introduce", food.getFood_introduce());
			String rest_id = food.getFood_restid();
			RestDao restDao = new RestDaoImpl();
			Rest rest = restDao.selectRestByid(rest_id);
			request.setAttribute("rest_name", rest.getRest_name());
			request.getRequestDispatcher("detail.jsp").forward(request, response);			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
