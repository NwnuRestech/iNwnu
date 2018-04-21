package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Music;

public interface MusicDao {
	//点歌
	int insertSong(Music music) throws SQLException;
	//查询所有已点但未播放的歌曲，按照时间先后顺序
	List<Music> selectAllsongs(int musicstatus) throws SQLException;
	//查找出最新点的歌曲
	Music selectsong() throws SQLException;
}
