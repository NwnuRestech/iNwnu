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

@WebServlet("/RestIndentController")
public class RestIndentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RestIndentController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private static IndentDao indentDao = new IndentDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		String rest_id=null;
		switch (op) {
		case "RestReceive"://商铺待接收的订单
			try {
				List<Indent> restIindents = indentDao.RestSelectIndent_StatIs1(rest_id);
				//TODO 跳转至商铺待接收订单界面(RestReceive.jsp)
				request.setAttribute("restIindents", restIindents);
				request.getRequestDispatcher("RestReceive.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "RestAchieve"://商铺待做好的订单
			try {
				List<Indent> restIindents = indentDao.RestSelectIndent_StatIs2(rest_id);
				//TODO 跳转至商铺待做好的订单界面(RestAchieve.jsp)
				request.setAttribute("restIindents", restIindents);
				request.getRequestDispatcher("RestAchieve.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "RestConfirm"://待用户确认的订单
			try {
				List<Indent> restIindents = indentDao.RestSelectIndent_StatIs3(rest_id);
				//TODO 跳转至用户待确认的订单界面(RestConfirm.jsp)
				request.setAttribute("restIindents", restIindents);
				request.getRequestDispatcher("RestConfirm.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "RestAllindents"://商铺的全部订单
			try {
				List<Indent> restIndents = indentDao.RestSelectAllindents(rest_id);
				request.setAttribute("restIndents", restIndents);
				//TODO 跳转至商铺所有订单界面(RestAllindents.jsp)
				request.getRequestDispatcher("RestAllindents.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	}

}
