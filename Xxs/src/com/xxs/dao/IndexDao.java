package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Food;
import com.xxs.bean.Img;
import com.xxs.bean.Rest;

public interface IndexDao {
	//�����ѯ�ĸ�ʳ������ƣ��۸�����id��ʳ��ͼƬ
	public List<Food> selectFoods() throws SQLException;
	//��������id��ѯ����ʳ���������̵�����
	public Food selectRest_idByfood_id(int food_id) throws SQLException;
	//����rest_id ��ѯ��rest_name
	public Rest selectRestByrest_id(String rest_id) throws SQLException;
	//�������̵��ȶȲ�ѯ���ȶ���ߵ��ĸ����̵����Ƽ�����ͼƬ
	public List<Rest> selectRests() throws SQLException; 
	
	
	//ʳ���ʾʳ������ƣ��۸��������̣�ʳ���ͼƬ��ʳ���������磺��ʳ�������࣬����ʾ���Ϊ�����ͼƬ��
	//���̣���ʾ���̵����ƣ�ͼƬ
	//����rest_id��ѯ�������̵�ͼƬ
	public Img selectImgByRestId(String rest_id) throws SQLException;
	//����ʳ�������ѯ��������ͼƬ
	public Img selectImgBytype(int type) throws SQLException;

}
