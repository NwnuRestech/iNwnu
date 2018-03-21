package com.xxs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Rest;
import com.xxs.bean.Stu;
import com.xxs.dao.RestDao;
import com.xxs.dao.StuDao;
import com.xxs.dao.impl.RestDaoImpl;
import com.xxs.dao.impl.StuDaoImpl;

@WebServlet("/LogController")
public class LogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LogController() {
        super();
    }
    private static StuDao stuDao = new StuDaoImpl();
    private static RestDao restDao = new RestDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "login":
			try {
				login(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		String stu_id = request.getParameter("stu_id");
		String stu_password = request.getParameter("stu_password");
		System.out.println(stu_id+"  "+stu_password);
		//1是学生，2是商户
		String type = null;
		if(stu_id != null && stu_password != null){
			Stu selectStu = stuDao.selectStu(stu_id, stu_password);
			if(selectStu == null){
				Rest selectRest = restDao.selectRest(stu_id, stu_password);
				if(selectRest == null){
					request.getRequestDispatcher("loginfail.jsp").forward(request, response);
					return;
				}else{
					type = "2";
				}
			}else{
				type = "1";
			}
			String id = stu_id;
			//存储到session中
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("type", type);
			//存储到cookie中
			Cookie cookie = new Cookie("xxs_login", stu_id+"-"+stu_password);
			response.addCookie(cookie);
			System.out.println("id:"+id+", type:"+type);
		}else{
			request.getRequestDispatcher("loginfail.jsp").forward(request, response);
			return;
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
