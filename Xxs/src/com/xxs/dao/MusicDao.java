package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Music;

public interface MusicDao {
	//���
	int insertSong(Music music) throws SQLException;
	//��ѯ�����ѵ㵫δ���ŵĸ���������ʱ���Ⱥ�˳��
	List<Music> selectAllsongs(int musicstatus) throws SQLException;
	//���ҳ����µ�ĸ���
	Music selectsong() throws SQLException;
}