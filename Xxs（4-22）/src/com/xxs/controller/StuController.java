package com.xxs.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.xxs.bean.Img;
import com.xxs.bean.ReponseData;
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
		String id = (String) request.getSession().getAttribute("id");//��session�л�ȡid
		String type = (String) request.getSession().getAttribute("type");//��session�л�ȡtype; type == 1:ѧ��;type==2:����
		if(type.equals("1") && id != null){//id��Ϊnull,��type=1,ѧ���Ѿ���¼
			Stu stu;
			try {
				stu = stuDao.selectStuByStu_id(id);
				request.setAttribute("stu", stu);
				Img img = stuDao.selectImgByStu_id(id);
				request.setAttribute("img", img);
				//TODO ��¼�ɹ�������ҵģ���ת��������Ϣҳ��(PersonInfo.jsp)
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
				//TODO ��¼�ɹ�������ҵģ���ת��������Ϣҳ��(RestPersonInfo.jsp)
				request.getRequestDispatcher("RestPersonInfo.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			// TODO ��¼ʧ�ܣ���ת�����µ�¼����
			request.getRequestDispatcher("pleaselogin.jsp").forward(request, response);
		}
	}

	private void NicknameExist(HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.out.println("nicknameExist");
		String newnickname = request.getParameter("newNickname");
		System.out.println("newnickname:"+newnickname);
//		ServletInputStream is = request.getInputStream();
//		String param = inputStream2String(is);
//		System.out.println("param"+param);
		PrintWriter out = response.getWriter();
		ReponseData rep = new ReponseData();
		String jsonString = ""; 
		try {
			Stu stu = stuDao.selectStuByNickname(newnickname);
			if (stu != null) {
				jsonString = JSON.toJSONString(stu);
//				System.out.println("jsonString:"+jsonString);
				rep.setData(jsonString);
				rep.setStatus(1);
			} else {
//				out.write("{\"res\":\"not\"}");
				rep.setStatus(0);
			}
			out.write(JSON.toJSONString(rep));
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String inputStream2String(InputStream in) throws IOException {
		StringBuffer out = new StringBuffer();
		byte[] b = new byte[4096];
		for (int n; (n = in.read(b)) != -1;) {
			out.append(new String(b, 0, n));
		}
		return out.toString();
	}

	private void changeStuInfo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		System.out.println("changeInfo:");
		String stu_id = (String) request.getSession().getAttribute("id");
		String type = (String) request.getSession().getAttribute("type");
		Stu stu;
		try {
			stu = stuDao.selectStuByStu_id(stu_id);
			//�û���¼�ɹ�֮�󣬵���ҵĽ����������ҳ��,�ڸ�������ҳ���е���޸���Ϣ�����޸���Ϣҳ��
			PrintWriter out = response.getWriter();
			if(stu != null && type.equals("1")){ //ѧ����¼�ɹ�
				String newNickname = request.getParameter("newNickname"); 
				System.out.println("newNickname:"+newNickname);
				if("".equals(newNickname)){//���޸���Ϣҳ����������ж����������û��ֵ����û�У�����ԭ������Ϣ
					newNickname = stu.getStu_nickname();
				}
				String newTel = request.getParameter("newTel");
				System.out.println("newTel:"+newTel);
				if("".equals(newTel)){
					newTel = stu.getStu_tel();
				}
				String newPassword = request.getParameter("newPassword");
				String pwd = request.getParameter("password");//��ȡ�����룬��������Ϊ�գ�����ԭ���ľ�����
				if("".equals(newPassword)){
					newPassword=pwd;
				}
				String newDorm = request.getParameter("newDorm");
				System.out.println("newDorm:"+newDorm);
				if("".equals(newDorm)){
					newDorm = stu.getStu_dorm();
				}
				String newDept = request.getParameter("newDept");
				System.out.println("newDept:"+newDept);
				if("".equals(newDept)){
					newDept = stu.getStu_dept();
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
