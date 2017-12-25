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
@WebServlet("/userregist")
public class RegistServlet extends ServletBase 
{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
        this.forward(req, resp, "page/regist.jsp");
	}
	public void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("......regist...servlet");
		
		Userinfo user=new Userinfo();
		this.getBean(req, user);
	/*	System.out.println(user.getArea());
		System.out.println(user.getProvince());
		System.out.println(user.getCity());*/
		//这里得到的是数字
		
		
		//user.setPwd(Md5Encrypt.md5(user.getPwd()));
		UserService us=(UserService)this.getService("userService");
		try {
			us.registUser(user);
		    this.setMessage(req, "注册用户成功！");
		    //this.forward(req, resp, "page/userindex.jsp");
		    resp.sendRedirect("login.jsp");
		} catch (SQLException e) 
		{
			 this.setMessage(req, "注册用户失败!");
			e.printStackTrace();
			this.execute(req, resp);
		}
		
	}

}
