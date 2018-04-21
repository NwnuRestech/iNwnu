package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Rest;
import com.xxs.dao.RestDao;
import com.xxs.dao.impl.RestDaoImpl;

@WebServlet("/GotoAllstore")
public class GotoAllstore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GotoAllstore() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RestDao restDao = new RestDaoImpl();
		try {
			List<Rest> rest1 = restDao.selectRestByLoc(1);
			List<Rest> rest2 = restDao.selectRestByLoc(2);
			List<Rest> rest3 = restDao.selectRestByLoc(3);
			request.setAttribute("rest1", rest1);
			request.setAttribute("rest2", rest2);
			request.setAttribute("rest3", rest3);
			request.getRequestDispatcher("allstore.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
