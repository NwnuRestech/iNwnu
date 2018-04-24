package com.xxs.dao;

import java.sql.SQLException;
import java.util.List;

import com.xxs.bean.Food;
import com.xxs.bean.Type;

public interface FoodDao {
	//����һ��ʳ��
	public int insertFood(Food food) throws SQLException;
	//��ѯһ���������е�ʳ��
	public List<Food> selectFoodByRestId(String restId) throws SQLException;
	//TODO  ɾ�����޸�ʳ��
	//ɾ��һ����Ʒ
	public int deleteFood(int food_id) throws SQLException;
	//�޸Ĳ�Ʒ�۸�
	public int updateFood(int food_id,String newMoney) throws SQLException;
	//TODO ��ѯʳ��ͨ��id 1.15����
	public Food selectFoodByFoodId(int food_id) throws SQLException;
	//ͨ��ʳ��������ʳ�ﲢͨ���۸�����
	public List<Food> selectFoodByNameOrderMoney(String foodName) throws SQLException;
	//ͨ��ʳ��������ʳ�ﲢͨ���ȶ�����
	public List<Food> selectFoodByNameOrderHot(String foodName) throws SQLException;
	//ͨ��ʳ��������ʳ�ﲢĬ������
	public List<Food> selectFoodByName(String foodName) throws SQLException;
	//��ѯһ���������в˵����
	public List<Type> selectFoodByType(String rest_id) throws SQLException;
	//����rest_id��type��ѯʳ��
	public List<Food> selectFoodByTypeAndRest_id(String rest_id, int type) throws SQLException;
	//��ѯһ�����̲˵������в�Ʒ��
	public List<Food> slectMenuByRest_id(String rest_id) throws SQLException;
	//��ҳ
	public List<Food> selectFoodsWithPage(int page ,int rows) throws SQLException;//page ҳ�� , rows ÿҳ��ʾ�ļ�¼��

}
