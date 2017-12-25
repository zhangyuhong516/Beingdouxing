package com.bdx.service;

import java.sql.SQLException;

import com.bdx.pojo.Userinfo;

/**
 * 封装对用户的管理操作
 * 注册用户
 * 修改用户
 * 重置密码
 * 用户登录
 * @author Administrator
 *
 */
public interface UserService 
{
	/**
	 * 完成用户注册
	 * @param user
	 * @return  int 返回新注册的用户的id值
	 * @throws SQLException
	 */
   public int registUser(Userinfo user) throws SQLException;
   /**
    * 根据用户的email 完成用户修改个人信息，，没完成图片上传
    * @param user
    * @return
    * @throws SQLException
    */
   public void alterUser(Userinfo user,String useremail) throws SQLException;
   /**
    * 根据ID取得一个用户对像
    * @param id
    * @return
    * @throws SQLException
    */
   public Userinfo getUserById(int id)throws SQLException;
   /**
    * 
    * 根据Email取得一个用户对象
    * @param string
    * @return
    * @throws SQLException
    */
   public Userinfo getUserByEmail(String string)throws SQLException;
   /**
    * 验证用户名和密码
    * @param email
    * @param pwd
    * @return 验证成功后返回查找到的Userinfo
    * @throws SQLException
    */
   public Userinfo checkLogin(String email,String pwd)throws SQLException;
   /**
    * 根据email更新用户的测验分数
    * @param email
    * @param grade_name
    * @param grade
    * @param grade_name_type
    * @param type
    * @throws SQLException
    */
   public void  updateGradeById(String email,String grade_name,String grade,String grade_name_type,String type)throws SQLException;
   
}
