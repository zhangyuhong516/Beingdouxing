package com.bdx.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bdx.pojo.Userinfo;
import com.bdx.service.UserService;
import com.bdx.servlet.core.ServletBase;
import com.bdx.util.Md5Encrypt;
@WebServlet("/admin/login")

//继承了ServletBase类，子类继承父类，子类及时没有写出来，也还是能用父类所有的方法，所以这里没有service方法
public class LoginServlet extends ServletBase
{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	    this.forward(req, resp, "login.jsp");//forward到login.jsp页面中，并且把req,resp传进去

	}
	public void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("start...logout...");
		req.getSession().invalidate();
		resp.sendRedirect("../login.jsp");
		
	   // this.forward(req, resp, "page/login.jsp");

	}
	public void checkLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	   String email=this.getString(req, "email");//得到页面传过来的数据，getString方法在ServletBase中也有写
	   String pwd=this.getString(req, "password");//也是得到页面传过来的数据。
	   System.out.println("...checkLoginServlet....");
	   System.out.println(email);
	   System.out.println(pwd);
	   //

	   UserService us=(UserService)this.getService("userService");
	   
	   System.out.println(us);
	   Userinfo user=null;
	   
	   try {
		user=us.checkLogin(email, pwd);//最后看看要不要用MD5加密
		if(null!=user&&email.equals(user.getEmail()))
		{
			//登录成功
			req.getSession().setAttribute("loged", user);
			
			this.forward(req, resp, "page/admin_index.jsp");
			//resp.sendRedirect("page/admin_index.jsp");
		}else
		{
			//登录失败
			this.execute(req, resp);
		}
		
	} catch (SQLException e) {
		//登录失败
		this.setMessage(req, "登录失败!");
		this.execute(req, resp);
		e.printStackTrace();
	}
	   
	   

	}

}
