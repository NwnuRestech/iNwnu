package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
<<<<<<< HEAD
import org.apache.tomcat.jdbc.pool.DataSource;
=======
import org.apache.commons.dbutils.handlers.ScalarHandler;
>>>>>>> djk

import com.xxs.bean.Music;
import com.xxs.dao.MusicDao;
import com.xxs.utils.JDBCTools;

public class MusicDaoImpl implements MusicDao {

	@Override
	public int insertSong(Music music) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
<<<<<<< HEAD
		return queryRunner.update("insert into music values(?,?,?,?,?,?)",music.getSongid(),music.getSongpeople(),music.getSongname(),music.getSongtime(),music.getSongmessage(),music.isSongstatus());
	}

	@Override
	public List<Music> selectAllsongs(int musicstatus) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from music where musicstatus = ? order by musictime asc", new BeanListHandler<Music>(Music.class),1,musicstatus);
	}

	@Override
	public Music selectsong() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from music where musicstatus = ? order by musictime desc limit 1", new BeanHandler<Music>(Music.class),0);
=======
		return queryRunner.update("insert into song values(?,?,?,?,?,?,?)",music.getSong_id(),music.getSong_stu(),music.getStu_id(),music.getSong_name(),music.getSong_time(),music.getSong_event(),music.getSong_state());
	}

	@Override//0:为播放;1:为播放
	public List<Music> selectAllsongs(String musicstatus) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from song where song_state = ? order by song_time asc", new BeanListHandler<Music>(Music.class),"0",musicstatus);
	}

	@Override
	public List<Music> selectsongWithPage(int page,int rows) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		return queryRunner.query("select * from song where song_state = ? limit ?,?", new BeanListHandler<Music>(Music.class),"0",(page-1)*rows,rows);
	}

	@Override
	public int updateSong_state(int song_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		int res = queryRunner.update("update song set song_state = ? where song_id = ?","1",song_id);
		return res;
	}

	@Override
	public long selectCount() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		long res = (long) queryRunner.query("select count(*) from song where song_state = ?", new ScalarHandler(),"0");
		return res;
	}

	@Override
	public List<Music> selectSongIs0(String stu_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		List<Music> allsongs = queryRunner.query("select * from song where song_state = ? and stu_id = ?", new BeanListHandler<Music>(Music.class),"0",stu_id);
		return allsongs;
>>>>>>> djk
	}

}
