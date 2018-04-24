package com.xxs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Complaint;
import com.xxs.bean.Rest;
import com.xxs.dao.ComplaintDao;
import com.xxs.dao.impl.ComplaintDaoImpl;

@WebServlet("/ComplaintController")
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ComplaintController() {
        super();
    }
    private static ComplaintDao complaintDao = new ComplaintDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "complaint"://提交投诉
			try {
				complaint(request,response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "checkrest"://查询被投诉商铺rest
			checkrest(request,response);
			break;
		default:
			break;
		}
		
	
	}

	private void checkrest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String restname = request.getParameter("restname");//获取被投诉的商铺
		System.out.println("restname1:"+restname);
		PrintWriter out = response.getWriter();
		try {
			Rest rest = complaintDao.selectRestidByRestname(restname);
			if (rest != null) {//rest不为空，则隐藏
				out.write("{\"res\":\"not\"}");
			}else{//rest==null，显示
				out.write("{\"res\":\"exists\"}");
			}
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

	private void complaint(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String stu_id = (String) request.getSession().getAttribute("id");//从session中获取stu_id
		String type = (String) request.getSession().getAttribute("type");
		System.out.println("type:"+type);
		if(type.equals("1")){//学生可以投诉
			String stuname = complaintDao.selectStunameBystuId(stu_id);
			String restname = request.getParameter("restname");//获取被投诉的商铺
			System.out.println("restname2:"+restname);
			Rest rest = complaintDao.selectRestidByRestname(restname);
			if(rest!=null){
				String rest_id = rest.getRest_id();
				System.out.println("rest_id:"+rest_id);
				String comp_event = request.getParameter("complain_event");//获取投诉的事件
				String complaint_time1 = request.getParameter("complain_time");//获取投诉的时间
				String complaint_time2 = complaint_time1+":00";
				Timestamp comp_time = Timestamp.valueOf(complaint_time2);
				Complaint com = new Complaint(stu_id, rest_id, comp_event, "djk", comp_time, 0);
				int res = complaintDao.InsertConplain(com);
				if(res == 1){
					System.out.println("success");
				}else{
					System.out.println("fail");
				}
				request.setAttribute("item", com);
				request.setAttribute("stuname", stuname);
				request.setAttribute("restname", rest.getRest_name());
				request.getRequestDispatcher("complain1.jsp").forward(request, response);
			}else{
					PrintWriter out = response.getWriter();
					out.write("<script>alert(商铺不存在)</script>");
			}
		}else if(type.equals("2")){
			PrintWriter out = response.getWriter();
			out.write("商铺不能投诉");
		}


		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
