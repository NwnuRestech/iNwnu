package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Food;
import com.xxs.bean.Img;
import com.xxs.bean.Rest;
import com.xxs.bean.ShowFandR;
import com.xxs.bean.ShowR;
import com.xxs.dao.IndexDao;
import com.xxs.dao.impl.IndexDaoImpl;

@WebServlet("/IndexController")
public class IndexController extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    public IndexController() {
        super();
    }
    private static IndexDao indexDao = new IndexDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
 	}

	public void gotoIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Index.jsp").forward(request, response);
	}

	protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int food_id = 0;
		int food_type = 0;
		String rest_id = null;
		ArrayList<ShowFandR> show = new ArrayList<ShowFandR>();
		ArrayList<ShowR> show1 = new ArrayList<ShowR>();
		try {
			List<Food> foods = indexDao.selectFoods();
			for(Food item: foods){
				System.out.println("item"+item);
				food_id = item.getFood_id();//���ʳ���id
				System.out.println("food_id:"+food_id);
				food_type = item.getFood_type();//����ʳ������
				System.out.println("food_type:"+food_type);
				String food_name = item.getFood_name();
				System.out.println("food_name"+food_name);
//				Food food = indexDao.selectRest_idByfood_id(food_id);//����id�ҵ���ʳ�����Ե�����id
//				System.out.println("-------------"+food);
				rest_id = item.getFood_restid();
				Rest rest = indexDao.selectRestByrest_id(rest_id);//��������id�ҳ�����
				System.out.println("rest_id:"+rest_id);
				System.out.println("Rest_name:"+rest.getRest_name());
				
				Img img = indexDao.selectImgBytype(food_type);
				System.out.println("img:"+img);
				System.out.println("-------------------------------------");
				ShowFandR showFandR = new ShowFandR(item.getFood_name(), item.getFood_money(),rest.getRest_name(),img.getImg_loc() );
			
				show.add(showFandR);
			}
			for(ShowFandR item: show){
				System.out.println(item);
			}
			request.setAttribute("show", show);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("-------------------------------");
		System.out.println("-------------------------------");
		try {
			List<Rest> rests = indexDao.selectRests();
			for(Rest item: rests){
				System.out.println(item);
				rest_id = item.getRest_id();
				System.out.println("rest_id:"+rest_id);
				Img restImg = indexDao.selectImgByRestId(rest_id);
				System.out.println("restimg:"+restImg);
				System.out.println("Rest_name:"+item.getRest_name());
				System.out.println("---------------------------------");
				System.out.println("rest_imgloc:"+restImg.getImg_loc());
				ShowR showR = new ShowR(item.getRest_name(), restImg.getImg_loc());
				System.out.println("showr:"+showR);
				show1.add(showR);
			}
			for(ShowR item: show1){
				System.out.println(item);
			}
			request.setAttribute("show1", show1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);
//		doGet(request, response);
		
	}

}
