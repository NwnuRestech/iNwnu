package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Indent;
import com.xxs.dao.IndentDao;
import com.xxs.dao.impl.IndentDaoImpl;
@WebServlet("/StuIndentController")
public class StuIndentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StuIndentController() {
        super();
    }
    private static IndentDao indentDao = new IndentDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		String stu_id =null;
		switch (op) {
		case "StuReceive"://商铺待接收,状态为1
			try {
				List<Indent> stuIndents = indentDao.StuSelectIndent_StatIs1(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO 跳转至用户待接收订单页面()
				request.getRequestDispatcher("StuReceive.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "StuAssess"://待评价的订单，状态为4
			try {
				List<Indent> stuIndents = indentDao.StuSelectIndent_StatIs4(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO 跳转至用户待评价页面(StuAssess.jsp)
				request.getRequestDispatcher("StuAssess.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "StuGetfood"://待取餐，状态为1,2
			try {
				List<Indent> stuIndents = indentDao.StuSelectIndent_StatIs2and3(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO 跳转至用户待取餐页面(StuGetfood.jsp)
				request.getRequestDispatcher("StuGetfood.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "StuAllindents"://用户所有订单
			try {
				List<Indent> stuIndents = indentDao.StuSelectAllindents(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO 跳转至用户所有订单页面(StuAllindents.jsp)
				request.getRequestDispatcher("StuAllindents..jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	
	
	}

}
