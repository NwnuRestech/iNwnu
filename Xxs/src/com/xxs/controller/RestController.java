package com.xxs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Food;
import com.xxs.bean.Type;
import com.xxs.dao.FoodDao;
import com.xxs.dao.TypeDao;
import com.xxs.dao.impl.FoodDaoImpl;
import com.xxs.dao.impl.TypeDaoImpl;

@WebServlet("/RestController")
public class RestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static FoodDao foodDao = new FoodDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		switch (op) {
		case "selectAllTypes":
			selectAllTypes(request,response);
			break;
		case "insertFood":
			insertFood(request,response);
			break;
		case "selectMenu":
			selectAllFoods(request,response);
			break;
		case "deleteFood":
			deleteFood(request,response);
			break;
		case "updateFoodInfo":
			updateFoodInfo(request,response);
			break;
		default:
			break;
		}
	}
	private void updateFoodInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String food_id1 = request.getParameter("food_id");
		int food_id = Integer.parseInt(food_id1);
		PrintWriter out = response.getWriter();
	}
	private void deleteFood(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String food_id1 = request.getParameter("foodid");
		int food_id = Integer.parseInt(food_id1);
		PrintWriter out = response.getWriter();
		int res;
		try {
			res = foodDao.deleteFood(food_id);
			if(res==1){
				out.println("delete success");
			}else{
				out.println("delete fail");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
	}
	private void selectAllFoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rest_id = (String) request.getSession().getAttribute("id");//从session中获得rest_id
		try {
			List<Food> menu = foodDao.slectMenuByRest_id(rest_id);
			request.setAttribute("menu", menu);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("allFoods.jsp").forward(request, response);
	}
	private void insertFood(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String food_restid = (String) request.getSession().getAttribute("id");//从session中获得rest_id
		String type = (String) request.getSession().getAttribute("type");//确定是商铺
		String food_name = request.getParameter("foodName");
		String food_money = request.getParameter("foodMoney");
		String food_introduce = request.getParameter("foodIntroduce");
		String food_type1 = request.getParameter("foodType");
		int food_type = Integer.parseInt(food_type1);
		Food food = new Food(food_name, food_restid, food_money, food_introduce, food_type);
		PrintWriter out = response.getWriter();
		if(type.equals("2")){//确定是商铺
			try {
				int res = foodDao.insertFood(food);
				if(res == 1){
					out.println("insert success");
				}else{
					out.println("insert fail");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		
	}
	private void selectAllTypes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		TypeDao typeDao = new TypeDaoImpl();
		List<Type> allTypes;
		try {
			allTypes = typeDao.selectAllTypes();
			request.setAttribute("allTypes", allTypes);
		} catch (SQLException e) {
			e.printStackTrace();
		}//获得所有的食物种类		
		request.getRequestDispatcher("InsertFood.jsp").forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
