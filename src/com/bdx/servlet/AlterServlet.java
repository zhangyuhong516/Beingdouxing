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

@WebServlet("/useralter")
public class AlterServlet extends ServletBase
{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("...servlet...execute");
		
	}
	
	public void alter(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		System.out.println(".......alter servlet");
		UserService us=(UserService) this.getService("userService");
		Userinfo user=(Userinfo) req.getSession().getAttribute("loged");
		String useremail=user.getEmail();//得到用户本来的Email
		
		Userinfo newuser=new Userinfo();
		this.getBean(req, newuser);//getBean里面有没有传图片的方法呢？
		//存储图片是将图片存在服务器中，将路径存在数据库中
		
		try {
			us.alterUser(newuser,useremail);
			this.setMessage(req, "修改用户成功！");
			resp.sendRedirect("login");
		} catch (SQLException e) {
			this.setMessage(req, "修改用户失败!");
			e.printStackTrace();
			this.execute(req, resp);
		}
		
		
		/*try {
			
			user.getEmail();
			us.getUserByEmail("773669388@qq.com");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		/*Userinfo user=new Userinfo();
		this.getBean(req, user);*/
		
	}

}
