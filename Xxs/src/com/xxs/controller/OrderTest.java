package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xxs.bean.Indent;
import com.xxs.bean.SimIndent;
import com.xxs.dao.IndentDao;
import com.xxs.dao.RestDao;
import com.xxs.dao.impl.IndentDaoImpl;
import com.xxs.dao.impl.RestDaoImpl;
import com.xxs.service.Indent2SimIndent;

@WebServlet("/OrderTest")
public class OrderTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OrderTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IndentDao indentDao = new IndentDaoImpl();
		String op = request.getParameter("op");
		HttpSession session = request.getSession();
		String stu_id = session.getAttribute("id").toString();
		String rest_id = session.getAttribute("id").toString();
		Indent2SimIndent i2i = new Indent2SimIndent();
		switch (op) {
		case "s1":
			List<SimIndent> stuIndent1;
			try {
				List<Indent> stuSelectIndent_StatIs1 = indentDao.StuSelectIndent_StatIs1(stu_id);
				stuIndent1 = i2i.indent2SimIndent(stuSelectIndent_StatIs1);
				request.setAttribute("stuIndent1", stuIndent1);
				request.setAttribute("stuSelectIndent_StatIs1", stuSelectIndent_StatIs1);
			} catch (NumberFormatException | SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			break;
		case "s23":
			List<SimIndent> stuIndent23;
			try {
				stuIndent23 = i2i.indent2SimIndent(indentDao.StuSelectIndent_StatIs2and3(stu_id));
				request.setAttribute("stuIndent23", stuIndent23);
			} catch (NumberFormatException | SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("StuOrder.jsp").forward(request, response);
			break;
			
		case "sall":
			List<SimIndent> stuIndentAll;
			try {
				stuIndentAll = i2i.indent2SimIndent(indentDao.StuSelectAllindents(stu_id));
				request.setAttribute("stuIndentAll", stuIndentAll);
			} catch (NumberFormatException | SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("StuOrder.jsp").forward(request, response);
			break;
			
		case "r1":
			List<SimIndent> restIndent1;
			try {
				restIndent1 = i2i.indent2SimIndent(indentDao.RestSelectIndent_StatIs1(rest_id));
				request.setAttribute("restIndent1", restIndent1);
			} catch (NumberFormatException | SQLException e3) {
				e3.printStackTrace();
			}
			request.getRequestDispatcher("RestOrder.jsp").forward(request, response);
			break;
			
		case "r2":
			List<SimIndent> restIndent2;
			try {
				restIndent2 = i2i.indent2SimIndent(indentDao.RestSelectIndent_StatIs2(rest_id));
				request.setAttribute("restIndent2", restIndent2);
			} catch (NumberFormatException | SQLException e2) {
				e2.printStackTrace();
			}
			request.getRequestDispatcher("RestOrder.jsp").forward(request, response);
			break;
			
		case "r3":
			List<SimIndent> restIndent3;
			try {
				restIndent3 = i2i.indent2SimIndent(indentDao.RestSelectIndent_StatIs3(rest_id));
				request.setAttribute("restIndent3", restIndent3);
			} catch (NumberFormatException | SQLException e1) {
				e1.printStackTrace();
			}
			request.getRequestDispatcher("RestOrder.jsp").forward(request, response);
			break;
			
		case "rall":
			List<SimIndent> restIndentAll;
			try {
				restIndentAll = i2i.indent2SimIndent(indentDao.RestSelectAllindents(rest_id));
				request.setAttribute("restIndentAll", restIndentAll);
			} catch (NumberFormatException | SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("RestOrder.jsp").forward(request, response);
			break;
		default:
			break;
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
