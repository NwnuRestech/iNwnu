package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Music;

public interface MusicDao {
	//点歌
	int insertSong(Music music) throws SQLException;
	//查询所有已点但未播放的歌曲，按照时间先后顺序
<<<<<<< HEAD
	List<Music> selectAllsongs(int musicstatus) throws SQLException;
	//查找出最新点的歌曲
	Music selectsong() throws SQLException;
=======
<<<<<<< HEAD
	List<Music> selectAllsongs(int musicstatus) throws SQLException;
	//查找出最新点的歌曲
	Music selectsong() throws SQLException;
=======
	List<Music> selectAllsongs(String musicstatus) throws SQLException;
	//查找出最新点的歌曲
	List<Music> selectsongWithPage(int page,int rows) throws SQLException;
	//修改状态
	int updateSong_state(int song_id) throws SQLException;
	//查出所有状态为0的歌曲
	long selectCount()throws SQLException;
	//查询某个用户的已点歌曲但为播放歌曲
	List<Music> selectSongIs0(String stu_id) throws SQLException;
	//查询某个用户已点并且已经播放的歌曲
>>>>>>> djk
>>>>>>> qy
}
