package com.xxs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxs.bean.Music;
import com.xxs.dao.MusicDao;
import com.xxs.dao.impl.MusicDaoImpl;

@WebServlet("/MusicController")
public class MusicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MusicController() {
        super();
    }
    private static MusicDao musicDao = new MusicDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "play":
			playSong(request,response);
			break;

		default:
			break;
		}
	}
	private void playSong(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean songstatus = false;
		String songpeople = request.getParameter("songpeople");
		String songname = request.getParameter("songname");
		String songtime1 = request.getParameter("songtime");
		System.out.println("songtime1"+songtime1);
		String songtime3 = songtime1+":00";
		Timestamp songtime2 = Timestamp.valueOf(songtime3);
		System.out.println("songtime2"+" "+songtime2);
		String songmessage = request.getParameter("songmessage");
		Music music = new Music(songpeople, songname, songtime2, songmessage, songstatus);
		try {
			int res = musicDao.insertSong(music);
			if(res == 1){
				System.out.println("success");
			}else{
				System.out.println("fail");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("music", music);
		request.getRequestDispatcher("music1.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
