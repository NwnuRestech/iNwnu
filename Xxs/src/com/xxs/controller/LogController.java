package com.xxs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Food;
import com.xxs.bean.Img;
import com.xxs.bean.Rest;
import com.xxs.bean.ShowFandR;
import com.xxs.bean.ShowR;
import com.xxs.bean.Stu;
import com.xxs.dao.IndexDao;
import com.xxs.dao.RestDao;
import com.xxs.dao.StuDao;
import com.xxs.dao.impl.IndexDaoImpl;
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
    private static IndexDao indexDao = new IndexDaoImpl();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		System.out.println("op:"+op);
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
		int food_id = 0;
		int food_type = 0;
		String rest_id = null;
		ArrayList<ShowFandR> show = new ArrayList<ShowFandR>();
		ArrayList<ShowR> show1 = new ArrayList<ShowR>();		
		//展示菜品
		try {
			List<Food> foods = indexDao.selectFoods();//查找四种菜品
			for(Food item: foods){
				System.out.println(item);
				food_id = item.getFood_id();//获得食物的id
				System.out.println("food_id:"+food_id);
				food_type = item.getFood_type();//获得食物的类别
				System.out.println("food_type:"+food_type);
				String food_name = item.getFood_name();//获得食物的名字
				System.out.println("food_name"+food_name);
				rest_id = item.getFood_restid();
				Rest rest = indexDao.selectRestByrest_id(rest_id);//根据商铺id找出商铺
				System.out.println("rest_id:"+rest_id);
				System.out.println("Rest_name:"+rest.getRest_name());
				Img img = indexDao.selectImgBytype(food_type);
				System.out.println("img:"+img);
				ShowFandR showFandR = new ShowFandR(food_name, item.getFood_money(), rest.getRest_name());//空指针异常
				System.out.println("showFandR"+showFandR);
				show.add(showFandR);
			}
			request.setAttribute("show", show);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//展示店铺
		try {
			List<Rest> rests = indexDao.selectRests();
			for(Rest item: rests){
				System.out.println(item);
				rest_id = item.getRest_id();
				System.out.println("rest_id:"+rest_id);
				Img restImg = indexDao.selectImgByRestId(rest_id);
				System.out.println("restimg:"+restImg);
				System.out.println("Rest_name:"+item.getRest_name());
//				System.out.println("rest_imgloc:"+restImg.getImg_loc());
				ShowR showR = new ShowR(item.getRest_name());//空指针异常
				System.out.println("showr:"+showR);
				show1.add(showR);
			}
			request.setAttribute("show1", show1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);		
	}
	
}
