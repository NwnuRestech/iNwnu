package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xxs.bean.Stu;
import com.xxs.dao.StuDao;
import com.xxs.dao.impl.StuDaoImpl;

@WebServlet("/GotoMember")
public class GotoMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GotoMember() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String type = "";
		try{
			type = session.getAttribute("type").toString();
		}catch(Exception e){
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
		}
		if(type == ""){
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
		}
		String id = (String) request.getSession().getAttribute("id");
		StuDao stuDao = new StuDaoImpl();
		try {
			if(type.equals("1")) {
				Stu stu = stuDao.selectStuByStu_id(id);
				request.setAttribute("stu_nickname", stu.getStu_nickname());
				request.getRequestDispatcher("member.jsp").forward(request, response);
			}
			} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
