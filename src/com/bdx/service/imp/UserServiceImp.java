package com.bdx.service.imp;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.bdx.pojo.Userinfo;
import com.bdx.service.UserService;
import com.bdx.service.core.ServiceBase;

//这个类中写了UserService的实现
public class UserServiceImp extends ServiceBase implements UserService {

	@Override
	public int registUser(Userinfo user) throws SQLException 
	{
		int resultnewid=-1;
		System.out.println("regist user...");
		String addsql="insert into userinfo( email, pwd, real_name,subject_type, sex, year, user_province, user_city, user_area) values(?,?,?,?,?,?,?,?,?)";
		String newid="select  LAST_INSERT_ID()";
		Connection con=cm.getConnection();
		try {
			cm.startTransaction();
			
			run.update(con, addsql, user.getEmail(),
					user.getPwd(),
					user.getReal_name(),
					user.getSubject_type(),
					user.getSex(),
					user.getYear(),
					user.getProvince(),
					user.getCity(),
					user.getArea());
			BigInteger lastid=(BigInteger)run.query(con, newid, new ArrayHandler())[0];
			resultnewid=lastid.intValue();
			
			cm.commitTransation();
		} catch (SQLException e)
		{
			cm.rollbackTransation();
			System.out.println("ERROR_008_UserServiceImp_注册用户失败...");
			throw e;
		}
		
		return resultnewid;
	}


	@Override
	public void alterUser(Userinfo user,String useremail) throws SQLException 
	{
		try {
			String altersql="update userinfo set user_province=?, user_city=?, user_area=?, sex=?, subject_type=?, pwd=?, user_scores=?, user_rank=? where email=?;";
			Connection con=cm.getConnection();
			cm.startTransaction();
			run.update(con, altersql, user.getProvince(),
					user.getCity(),
					user.getArea(),
					user.getSex(),
					user.getSubject_type(),
					user.getPwd(),
					user.getUser_scores(),
					user.getUser_rank(),
					useremail);
			
			cm.commitTransation();
		} catch (Exception e) {
			cm.rollbackTransation();
			System.out.println("ERROR_010_UserServiceImp_修改用户信息失败...");
			throw e;
		}
		
		
	}



	@Override
	public Userinfo getUserById(int id) throws SQLException 
	{
	    Userinfo user=null;
	    try {
			user=run.query(cm.getConnection(), "select * from userinfo where id=?",new BeanHandler<Userinfo>(Userinfo.class),id);
		} catch (Exception e) {
			System.out.println("ERROR_009_UserServiceImp_通过id获取用户id失败...");
			e.printStackTrace();
			throw e;
		}
		return user;
	}
	
	
	@Override
	public Userinfo getUserByEmail(String email) throws SQLException {
		 Userinfo user=null;
		    try {
				user=run.query(cm.getConnection(), "select * from userinfo where email=?",new BeanHandler<Userinfo>(Userinfo.class),email);
			} catch (Exception e) {
				System.out.println("ERROR_009_UserServiceImp_通过email获取用户email失败...");
				e.printStackTrace();
				throw e;
			}
			return user;
	}
	
	
	//检验登录用户的用户名和密码是否正确
	@Override
	public Userinfo checkLogin(String email, String pwd) throws SQLException 
	{
		System.out.println("...CheckLogin.....");
		Userinfo user=null;
		String sql="select * from userinfo where email=? and pwd=?";
		user=run.query(cm.getConnection(), sql, new BeanHandler<Userinfo>(Userinfo.class),email,pwd);
		System.out.println(user);
		return user;
	}


	@Override
	public void  updateGradeById(String email, String grade_name,String grade, String grade_name_type,String type) throws SQLException 
	{
		
		System.out.println("updateGradeById...");
		try {
			Connection con=cm.getConnection();
			String updatesql="update userinfo set "+grade_name+"=?,"+grade_name_type+"=? where email=?";
			cm.startTransaction();
			run.update(	con, 
						updatesql, 
						grade, 
						type,
						email);
			cm.commitTransation();
		} catch (Exception e) {
			cm.rollbackTransation();
			System.out.println("ERROR_010_UserServiceImp_更新用户分数失败 ...");
			e.printStackTrace();
		}
		
	}



	

}
