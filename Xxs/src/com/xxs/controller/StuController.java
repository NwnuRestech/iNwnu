package com.xxs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Img;
import com.xxs.bean.Rest;
import com.xxs.bean.Stu;
import com.xxs.dao.RestDao;
import com.xxs.dao.StuDao;
import com.xxs.dao.impl.RestDaoImpl;
import com.xxs.dao.impl.StuDaoImpl;

@WebServlet("/StuController")
public class StuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StuController() {
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
		case "changeStuInfo":
			changeStuInfo(request,response);			
			break;
		case "StunicknameExist":
			NicknameExist(request,response);
			break;
		case "ShowStuInfo":
			showStuInfo(request,response);
			break;
		default:
			break;
		}
	
	}

	private void showStuInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("id");//从session中获取id
		String type = (String) request.getSession().getAttribute("type");//从session中获取type; type == 1:学生;type==2:商铺
		if(type.equals("1") && id != null){//id不为null,且type=1,学生已经登录
			Stu stu;
			try {
				stu = stuDao.selectStuByStu_id(id);
				request.setAttribute("stu", stu);
				Img img = stuDao.selectImgByStu_id(id);
				request.setAttribute("img", img);
				//TODO 登录成功，点击我的，跳转至个人信息页面(PersonInfo.jsp)
				request.getRequestDispatcher("myinfo.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(type.equals("2") && id != null){
		
			try {
				Rest rest = restDao.selectRest(id);
				Img img = restDao.selectImgByRest_id(id);
				request.setAttribute("rest", rest);
				request.setAttribute("img", img);
				//TODO 登录成功，点击我的，跳转至个人信息页面(RestPersonInfo.jsp)
				request.getRequestDispatcher("RestPersonInfo.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			// TODO 登录失败，跳转至重新登录界面
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
		}
	}

	private void NicknameExist(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("NicknameExist");
		String newNickname = request.getParameter("newNickname");
		try {
			PrintWriter out = response.getWriter();
			Stu stu = stuDao.selectStuByNickname(newNickname);
			if (stu != null) {
				out.write("{\"res\":\"exists\"}");
			} else {
				out.write("{\"res\":\"not\"}");
			}
			out.flush();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	private void changeStuInfo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		System.out.println("changeInfo:");
		String stu_id = (String) request.getSession().getAttribute("id");
		String type = (String) request.getSession().getAttribute("type");
		Stu stu;
		try {
			stu = stuDao.selectStuByStu_id(stu_id);
//			System.out.println(stu);
//			System.out.println("stu_nickname:"+stu.getStu_nickname());
//			System.out.println("stu_tel:"+stu.getStu_tel());
//			System.out.println("stu_dorm:"+stu.getStu_dorm());
//			System.out.println("stu_dept"+stu.getStu_dept());
			//用户登录成功之后，点击我的进入个人中心页面,在个人中心页面中点击修改信息进入修改信息页面
			PrintWriter out = response.getWriter();
			if(stu != null && type.equals("1")){ //学生登录成功
				String newNickname = request.getParameter("newNickname"); 
				System.out.println("newNickname:"+newNickname);
				if("".equals(newNickname)){//在修改信息页面的输入框里，判断输入框里有没有值，若没有，则用原来的信息
					newNickname = stu.getStu_nickname();
					System.out.println("1");
				}
				String newTel = request.getParameter("newTel");
				System.out.println("newTel:"+newTel);
				if("".equals(newTel)){
					newTel = stu.getStu_tel();
					System.out.println("2");
				}
				String newPassword = request.getParameter("newPassword");
				String newDorm = request.getParameter("newDorm");
				System.out.println("newDorm:"+newDorm);
				if("".equals(newDorm)){
					newDorm = stu.getStu_dorm();
					System.out.println("3");
				}
				String newDept = request.getParameter("newDept");
				System.out.println("newDept:"+newDept);
				if("".equals(newDept)){
					newDept = stu.getStu_dept();
					System.out.println("4");
				}
				int res = stuDao.updateStuInfo(newNickname, newTel, newPassword, newDorm, newDept, stu_id);
				if(res == 1){
					request.getRequestDispatcher("GotoMember").forward(request, response);
				}else{
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		
		
		
		
	}

}
