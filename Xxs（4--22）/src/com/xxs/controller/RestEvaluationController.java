package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Img;
import com.xxs.bean.RestEvaluation;
import com.xxs.bean.Stu;
import com.xxs.bean.rest_evaluation;
import com.xxs.dao.RestEvaluationDao;
import com.xxs.dao.StuDao;
import com.xxs.dao.impl.RestEvaluationDaoImpl;
import com.xxs.dao.impl.StuDaoImpl;

@WebServlet("/RestEvaluationController")
public class RestEvaluationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RestEvaluationController() {
        super();
    }
    private StuDao stuDao = new StuDaoImpl();
    private RestEvaluationDao red = new RestEvaluationDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "insertEvaluation":
			insertEvaluation(request,response);
			break;
		default:
			break;
		}
	}
	
	private void insertEvaluation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stu_id = (String) request.getSession().getAttribute("id");
		String type = (String) request.getSession().getAttribute("type");
		if(stu_id!=null && type.equals("1")){//学生已经登录
			int eval_id = 0;
			String rest_id = request.getParameter("rest_id");
			String eval_content = request.getParameter("content");
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//date类型转为string类型
			String eval_time1 = sdf.format(date);
			Timestamp eval_time = Timestamp.valueOf(eval_time1);//string类型转为timestamp类型
			RestEvaluation restEvaluation = new RestEvaluation(eval_id, stu_id, rest_id, eval_content, eval_time,0);
			try {
				int res = red.insertRestEvaluation(restEvaluation);
				if(res == 1){
					request.getRequestDispatcher("GotoStoreinfo?rest_id="+rest_id).forward(request, response);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(stu_id == null){
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
		}
	}


}
