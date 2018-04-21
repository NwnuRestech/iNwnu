package com.xxs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xxs.bean.Indent;
import com.xxs.bean.Rest;
import com.xxs.bean.SimIndent;
import com.xxs.dao.IndentDao;
import com.xxs.dao.RestDao;
import com.xxs.dao.impl.IndentDaoImpl;
import com.xxs.dao.impl.RestDaoImpl;
import com.xxs.service.Indent2SimIndent;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IndentDao indentDao = new IndentDaoImpl();
	RestDao restDao = new RestDaoImpl();
    
    public OrderController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "gotoRestOrder":
			try {
				gotoRestOrder(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "gotoStuOrder":
			try {
				gotoStuOrder(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "gotoOrder":
			HttpSession session = request.getSession();
			String type = "";
			try{
				type = session.getAttribute("type").toString();
			}catch(Exception e){
				request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
			}
			try {
				if(type.equals("1"))
					gotoStuOrder(request, response);
				else if(type.equals("2"))
					gotoRestOrder(request, response);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			break;
		case "indentReceive":
			try {
				indentReceive(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "indentAchieve":
			try {
				indentAchieve(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "indentConfirm":
			try {
				indentConfirm(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "gotoCode":
			try {
				gotoCode(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "addOrder":
			try {
				addOrder(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
		
	}
	
	private void addOrder(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, SQLException, ServletException, IOException, ParseException  {
		HttpSession session = request.getSession();
		String stu_id = "";
		PrintWriter out = response.getWriter();
		try{
			stu_id = session.getAttribute("id").toString();
		}catch(Exception e){
			out.write("{\"res\":\"nologin\"}");
			return;
		}
		if(stu_id == ""){
			out.write("{\"res\":\"nologin\"}");
			return;
		}
		System.out.println("stu_id"+stu_id);
		String food_num = request.getParameter("food_num");
		String indent_money = request.getParameter("indent_money");
		String food_id = request.getParameter("food_id");
//		String stu_id = request.getParameter("stu_id");
		String indent_remk = request.getParameter("indent_remk");
		String gettime = request.getParameter("gettime");
		String rest_id = "1";
		System.out.println(gettime);
		System.out.println("in addOrder");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHH:mm");
		String newDate = sdf.format(new Date());
		Date getTime = sdf1.parse(newDate+gettime);
		Indent indent = new Indent(0L, indent_money, 1, new Integer(food_id), rest_id, stu_id, new Integer(food_num), indent_remk, new Timestamp(new Date().getTime()), new Timestamp(getTime.getTime()));
		int insertIndent = indentDao.insertIndent(indent);
		if(insertIndent == 1){
			out.write("{\"res\":\"yes\"}");
		}else{
			out.write("{\"res\":\"error\"}");
		}
	}
	private void gotoCode(HttpServletRequest request, HttpServletResponse response)  throws NumberFormatException, SQLException, ServletException, IOException {
		String indent_id = request.getParameter("indent_id");
		Indent indent = indentDao.selectIndentById(indent_id);
		SimIndent simIndent = new Indent2SimIndent().indent2SimIndent(indent);
		Rest rest =  restDao.selectRestByid(indent.getRest_id());
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		Timestamp food_time = indent.getGet_foodtime();
		Date food_date = new Date(food_time.getTime());
		String format = sdf.format(food_date);
		request.setAttribute("rest_name", rest.getRest_name());
		request.setAttribute("indent_key", simIndent.getFoodkey_key());
		request.setAttribute("indent_data", format);
		request.getRequestDispatcher("code.jsp").forward(request, response);
	}

	private void indentConfirm(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, SQLException, ServletException, IOException {
		String indent_id = request.getParameter("indent_id");
		int updateIndent2 = indentDao.updateIndent4(new Long(indent_id));
		new OrderController().gotoStuOrder(request,response);
	}

	private void indentAchieve(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, SQLException, ServletException, IOException {
		String indent_id = request.getParameter("indent_id");
		int updateIndent2 = indentDao.updateIndent3(new Long(indent_id));
		new OrderController().gotoRestOrder(request,response);
	}

	private void indentReceive(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, SQLException, ServletException, IOException {
		String indent_id = request.getParameter("indent_id");
		int updateIndent2 = indentDao.updateIndent2(new Long(indent_id));
		new OrderController().gotoRestOrder(request,response);
	}

	private void gotoStuOrder(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		HttpSession session = request.getSession();
		String stu_id = session.getAttribute("id").toString();
		Indent2SimIndent i2i = new Indent2SimIndent();
		List<SimIndent> stuIndent1 = i2i.indent2SimIndent(indentDao.StuSelectIndent_StatIs1(stu_id));
		List<SimIndent> stuIndent23 = i2i.indent2SimIndent(indentDao.StuSelectIndent_StatIs2and3(stu_id));
		List<SimIndent> stuIndentAll = i2i.indent2SimIndent(indentDao.StuSelectAllindents(stu_id));
		request.setAttribute("stuIndent1", stuIndent1);
		request.setAttribute("stuIndent23", stuIndent23);
		request.setAttribute("stuIndentAll", stuIndentAll);
		request.getRequestDispatcher("StuOrder.jsp").forward(request, response);
	}

	private void gotoRestOrder(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		HttpSession session = request.getSession();
		String rest_id = session.getAttribute("id").toString();
		Indent2SimIndent i2i = new Indent2SimIndent();
		List<SimIndent> restIndent1 = i2i.indent2SimIndent(indentDao.RestSelectIndent_StatIs1(rest_id));
		List<SimIndent> restIndent2 = i2i.indent2SimIndent(indentDao.RestSelectIndent_StatIs2(rest_id));
		List<SimIndent> restIndent3 = i2i.indent2SimIndent(indentDao.RestSelectIndent_StatIs3(rest_id));
		List<SimIndent> restIndentAll = i2i.indent2SimIndent(indentDao.RestSelectAllindents(rest_id));
		request.setAttribute("restIndent1", restIndent1);
		request.setAttribute("restIndent2", restIndent2);
		request.setAttribute("restIndent3", restIndent3);
		request.setAttribute("restIndentAll", restIndentAll);
		request.getRequestDispatcher("RestOrder.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
