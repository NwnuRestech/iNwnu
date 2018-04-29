package com.xxs.dao.impl;

import java.sql.SQLException;
<<<<<<< HEAD

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
=======
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
>>>>>>> djk

import com.xxs.bean.Complaint;
import com.xxs.bean.Rest;
import com.xxs.bean.Stu;
import com.xxs.dao.ComplaintDao;
import com.xxs.utils.JDBCTools;

public class ComplaintDaoImpl implements ComplaintDao {

	@Override
	public int InsertConplain(Complaint com) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		int res = queryRunner.update("insert into complaints values(?,?,?,?,?,?,?)",com.getComid(),com.getStu_id(),com.getRest_id(),com.getComp_event(),com.getSug_solution(),com.getComp_time(),com.getComp_state());
		return res;
	}

	@Override
	public Rest selectRestidByRestname(String restname) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Rest res = queryRunner.query("select * from rest where rest_name = ?",new BeanHandler<Rest>(Rest.class),restname);
		return res;
	}

	@Override
	public String selectRestnameByrestId(String restid) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Rest res = queryRunner.query("select rest_name from rest where rest_id = ?",new BeanHandler<Rest>(Rest.class),restid);
		return res.getRest_name();
	}

	@Override
	public String selectStunameBystuId(String stuid) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		Stu stu = queryRunner.query("select stu_name from stu where stu_id = ?",new BeanHandler<Stu>(Stu.class),stuid);
		return stu.getStu_name();
	}

<<<<<<< HEAD
=======
	@Override
	public List<Complaint> selectAllComplaints() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		List<Complaint> allComplaints = queryRunner.query("select * from complaints where result = ?", new BeanListHandler<Complaint>(Complaint.class),"0");
		return allComplaints;
	}

	@Override
	public List<Complaint> selectAllComplaintsWithPage(int page, int rows) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		List<Complaint> allComs = queryRunner.query("select * from complaints where result = ? limit ?,?", new BeanListHandler<Complaint>(Complaint.class),"0",(page-1)*rows,rows);
		return allComs;
	}

	@Override
	public long selectCount() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		long len = (long) queryRunner.query("select count(*) from complaints where result = ?", new ScalarHandler(),"0");
		return len;
	}

	@Override
	public List<Complaint> selectAllComsIs0(String stu_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTools.getDataSource());
		List<Complaint> allcoms = queryRunner.query("select * from complaints where stu_id = ? and result = ?", new BeanListHandler<Complaint>(Complaint.class),stu_id,"0");
		return allcoms;
	}

>>>>>>> djk
}
