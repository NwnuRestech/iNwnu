package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Type;
import com.xxs.dao.TypeDao;
import com.xxs.dao.impl.TypeDaoImpl;

@WebServlet("/TypeController")
public class TypeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TypeController() {
        super();
    }
    private static TypeDao typeDao = new TypeDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		System.out.println("op:"+op);
		switch (op) {
		case "showAllTypes":
			showAllTypes(request,response);
			break;

		default:
			break;
		}
	}

	private void showAllTypes(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("showAllTypes:");
			List<Type> allTypes = typeDao.selectAllTypes();
			request.setAttribute("allTypes", allTypes);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			request.getRequestDispatcher("InsertFood.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
