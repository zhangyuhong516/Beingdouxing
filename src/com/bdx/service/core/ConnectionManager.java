package com.bdx.service.core;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ResourceBundle;

/**
 * 封装 管理连接对象
 * @author Administrator
 *
 */
public abstract class ConnectionManager 
{
   //用于存放当前线程中的Connection对象
	/**
	 * 可以理解为线程级的变量，假如有一个变量i=10,线程A和线程B都要用， 这样就存在线程不安全，
	 * 但是把 i放入ThreadLocal中，相当于两个线程有各自的i,互不影响   
	 * Threadlocal中放东西就set();  取东西用get();
	 */
   public static ThreadLocal<Connection> conts=new ThreadLocal<Connection>();
   
   
   
   private static ConnectionManager cm;
   
   private static ResourceBundle res=null;
   
   //存储的是当前类Connectionmanager的子类，也就是实现类
   private static String cminstance=null;
   //在classpath下找 jdbc.properties,并从中找到当前ConnectionManager的实现类
   static{
	  res=ResourceBundle.getBundle("jdbc");
	  cminstance=res.getString("connection");
   }
   
   /**
    * 得到一个Connection对象
    * @return
    */
   public Connection getConnection()
   {
	   //先从ThreadLocal中（也就是从当前线程中）找Connection,如果没有就通过当前类的子类在线程池中拿一个 Connection
	  Connection con=conts.get();
	   try {
		if(null==con||con.isClosed())
		   {
			   con=this.getRealConnection();
			   conts.set(con);
		   }
	} catch (SQLException e) {
		System.out.println("ERROR_001_获取Connection对象失败....");
		e.printStackTrace();
	}
	   return con;
   }
   /**
    * 真正得到一个Connection对象
    * @return
    */
   public abstract Connection getRealConnection();
   /**
    * 关闭Connection对象
    */
   public void closeConnection()
   {
	   try {
		   Connection con=this.getConnection();
		if(null!=con&&!con.isClosed())
		   {
			   con.close();
		   }
	} catch (SQLException e) {
		System.out.println("ERROR_002_关才Connection对象失败....");
		e.printStackTrace();
	}
	   
   }
   /**
    * 开始一个事务
    */
   public void startTransaction()
   {
	   try {
		   Connection con=this.getConnection();
		if(null!=con&&!con.isClosed())
		   {
			   con.setAutoCommit(false);
			   
		   }
	} catch (SQLException e) {
		System.out.println("ERROR_003_开始事务失败....");
		e.printStackTrace();
	}
   }
   /**
    * 提交事务
    */
   public void commitTransation()
   {
	   try {
		   Connection con=this.getConnection();
			if(null!=con&&!con.isClosed())
			   {
				   con.commit();
			   }
		} catch (SQLException e) {
			System.out.println("ERROR_004_提交事务失败....");
			e.printStackTrace();
		}
   }
   /**
    * 回滚事务
    */
   public void rollbackTransation()
   {
	   try {
		   Connection con=this.getConnection();
			if(null!=con&&!con.isClosed())
			   {
				   con.rollback();
				   
			   }
		} catch (SQLException e) {
			System.out.println("ERROR_005_回滚事务失败....");
			e.printStackTrace();
		}
  }
  
   /**
    * 得到ConnectionManager对象
    * @return
    */
   public static ConnectionManager getInstance()
   {
	   if(null==cm)
	   {
		 try {
			cm= (ConnectionManager)Class.forName(cminstance).newInstance();
		} catch (Exception e) {
			System.out.println("ERROR_006_检查配置文件jdbc.properties");
			e.printStackTrace();
		} 
	   }
	   return cm;
   }
	
}
