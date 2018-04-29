package com.xxs.controller;

import java.io.IOException;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
import java.io.PrintWriter;
>>>>>>> djk
>>>>>>> qy
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
import java.util.List;
>>>>>>> djk
>>>>>>> qy

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
>>>>>>> djk
>>>>>>> qy
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
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
		case "selectAllSongsIs0":
			selectAllSongsIs0(request,response);
			break;
		case "selectMysongIs0":
			selectSongIs0(request,response);
			break;
>>>>>>> djk
>>>>>>> qy
		default:
			break;
		}
	}
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> qy
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
<<<<<<< HEAD
=======
=======
	private void selectSongIs0(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stu_id = (String) request.getSession().getAttribute("id");
		try {
			List<Music> allsongs = musicDao.selectSongIs0(stu_id);
			System.out.println(allsongs);
			if(allsongs != null){
				request.setAttribute("allsongs", allsongs);
				request.getRequestDispatcher("Mysong.jsp").forward(request, response);				
			}else{
				response.getWriter().write("δ���");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	private void selectAllSongsIs0(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("selectAllSongsIs0");
		PrintWriter out = response.getWriter();
        String pageStr = request.getParameter("page");
        String rowsStr = request.getParameter("rows");
        int page = Integer.parseInt(pageStr);
        int rows = Integer.parseInt(rowsStr);
        System.out.println("page:"+page+"rows:"+rows);
		List<Music> allSongs=null;
		try {
			allSongs = musicDao.selectsongWithPage(page, rows);
			Object json = JSON.toJSON(allSongs);
            System.out.println(json);
            JSONObject res = new JSONObject();
			res.put("total", musicDao.selectCount());
			res.put("rows", json);
			out.write(res.toJSONString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	private void playSong(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String song_state = "0";//Ĭ��Ϊ0;δ����
		String song_stu = request.getParameter("songpeople");
		String stu_id = (String) request.getSession().getAttribute("id");//���ѧ��id
		String song_name = request.getParameter("songname");
		String songtime1 = request.getParameter("songtime");
		System.out.println("songtime1"+songtime1);
		String songtime3 = songtime1+":00";
		Timestamp song_time = Timestamp.valueOf(songtime3);
		String song_event = request.getParameter("songmessage");
		Music music = new Music(song_stu, stu_id, song_name, song_time, song_event, song_state);
>>>>>>> djk
>>>>>>> qy
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
