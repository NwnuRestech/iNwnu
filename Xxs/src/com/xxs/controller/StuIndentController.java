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
		case "StuReceive"://���̴�����,״̬Ϊ1
			try {
				List<Indent> stuIndents = indentDao.StuSelectIndent_StatIs1(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO ��ת���û������ն���ҳ��()
				request.getRequestDispatcher("StuReceive.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "StuAssess"://�����۵Ķ�����״̬Ϊ4
			try {
				List<Indent> stuIndents = indentDao.StuSelectIndent_StatIs4(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO ��ת���û�������ҳ��(StuAssess.jsp)
				request.getRequestDispatcher("StuAssess.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "StuGetfood"://��ȡ�ͣ�״̬Ϊ1,2
			try {
				List<Indent> stuIndents = indentDao.StuSelectIndent_StatIs2and3(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO ��ת���û���ȡ��ҳ��(StuGetfood.jsp)
				request.getRequestDispatcher("StuGetfood.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "StuAllindents"://�û����ж���
			try {
				List<Indent> stuIndents = indentDao.StuSelectAllindents(stu_id);
				request.setAttribute("stuIndents", stuIndents);
				//TODO ��ת���û����ж���ҳ��(StuAllindents.jsp)
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
