package com.xxs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.tomcat.jdbc.pool.DataSource;

import com.xxs.bean.Music;
import com.xxs.dao.MusicDao;
import com.xxs.utils.JDBCTools;

public class MusicDaoImpl implements MusicDao {

	@Override
	public int insertSong(Music music) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
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
	}

}
