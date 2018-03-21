package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Food;
import com.xxs.bean.Img;
import com.xxs.bean.RestEvaluation;
import com.xxs.bean.Stu;
import com.xxs.bean.Type;
import com.xxs.bean.rest_evaluation;
import com.xxs.dao.FoodDao;
import com.xxs.dao.RestDao;
import com.xxs.dao.RestEvaluationDao;
import com.xxs.dao.StuDao;
import com.xxs.dao.impl.FoodDaoImpl;
import com.xxs.dao.impl.RestDaoImpl;
import com.xxs.dao.impl.RestEvaluationDaoImpl;
import com.xxs.dao.impl.StuDaoImpl;
@WebServlet("/GotoStoreinfo")
public class GotoStoreinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GotoStoreinfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//加载菜品信息
		String rest_id = request.getParameter("rest_id");
		FoodDao foodDao = new FoodDaoImpl();
		RestDao restDao = new RestDaoImpl();
		try {
			List<Type> allType = foodDao.selectFoodByType(rest_id);
			List<List<Food>> allTypeFood = new ArrayList<>();
			request.setAttribute("allType", allType);
			for (Type type : allType) {
				List<Food> typeFood = foodDao.selectFoodByTypeAndRest_id(rest_id, type.getType_id());
				allTypeFood.add(typeFood);
			}
		//加载评论信息
			RestEvaluationDao red = new RestEvaluationDaoImpl();
			StuDao stuDao = new StuDaoImpl();
			List<RestEvaluation> allEvaluations;
			List<rest_evaluation> results = new ArrayList<rest_evaluation>();
				allEvaluations = red.selectAllRestEvaluations(rest_id);
				for(RestEvaluation item: allEvaluations){
					String stu_id = item.getStu_id();
					Stu stu = stuDao.selectStuByStu_id(stu_id);//获得stu
					Img img = stuDao.selectImgByStu_id(stu_id);//获得stu的img
					rest_evaluation res = new rest_evaluation(stu.getStu_nickname(), item.getEval_content(), item.getEval_time(), item.getEval_fraction(), img.getImg_loc());
					results.add(res);
				}
			Object evaluNum = new RestEvaluationDaoImpl().selectRestEvaluationsByRest_id(rest_id);
			request.setAttribute("results", results);
			request.setAttribute("allType", allType);
			request.setAttribute("allTypeFood", allTypeFood);
			request.setAttribute("evaluNum", evaluNum);
			request.setAttribute("rest", restDao.selectRest(rest_id));
			
			request.getRequestDispatcher("storeinfo.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
	
	
}
