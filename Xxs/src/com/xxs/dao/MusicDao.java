package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Music;

public interface MusicDao {
	//���
	int insertSong(Music music) throws SQLException;
	//��ѯ�����ѵ㵫δ���ŵĸ���������ʱ���Ⱥ�˳��
<<<<<<< HEAD
	List<Music> selectAllsongs(int musicstatus) throws SQLException;
	//���ҳ����µ�ĸ���
	Music selectsong() throws SQLException;
=======
<<<<<<< HEAD
	List<Music> selectAllsongs(int musicstatus) throws SQLException;
	//���ҳ����µ�ĸ���
	Music selectsong() throws SQLException;
=======
	List<Music> selectAllsongs(String musicstatus) throws SQLException;
	//���ҳ����µ�ĸ���
	List<Music> selectsongWithPage(int page,int rows) throws SQLException;
	//�޸�״̬
	int updateSong_state(int song_id) throws SQLException;
	//�������״̬Ϊ0�ĸ���
	long selectCount()throws SQLException;
	//��ѯĳ���û����ѵ������Ϊ���Ÿ���
	List<Music> selectSongIs0(String stu_id) throws SQLException;
	//��ѯĳ���û��ѵ㲢���Ѿ����ŵĸ���
>>>>>>> djk
>>>>>>> qy
}
