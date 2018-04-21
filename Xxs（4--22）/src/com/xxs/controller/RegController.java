package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Stu;
import com.xxs.dao.impl.StuDaoImpl;

@WebServlet("/RegController")
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StuDaoImpl stuImpl = new StuDaoImpl();
    public RegController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "reg":
			try {
				reg(request, response);
			} catch (SQLException e) {
				request.getRequestDispatcher("registfail.jsp").forward(request,response);
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	}
	//用户注册时，去数据库创建表，后跳转至登录界面
	private void reg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		String stu_id = request.getParameter("stu_id");
		String stu_name= request.getParameter("stu_name");
		String stu_nickname = request.getParameter("stu_nickname");
		String stu_tel = request.getParameter("stu_tel");
		String stu_password = request.getParameter("stu_password");
		if(stu_id.length()<=0){
			request.getRequestDispatcher("registfail.jsp").forward(request,response);
			return;
		}
		int res = stuImpl.insertStu(new Stu(stu_id, stu_name, stu_nickname, stu_tel, stu_password, 0, 0, "", "", 0));
		if(res == 0){
			request.getRequestDispatcher("registfail.jsp").forward(request,response);
		}
		request.getRequestDispatcher("loginOrRegist.jsp").forward(request,response);
	}

}
