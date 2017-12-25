package com.bdx.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bdx.pojo.Userinfo;
import com.bdx.servlet.core.ServletBase;
@WebServlet("/admin/getuserinfo")
public class GerUserInfoServlet extends ServletBase {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	
	public void getuserinfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Userinfo user=(Userinfo) req.getSession().getAttribute("loged");
		String useremail=user.getEmail();
		String pwd=user.getPwd();
		String realname=user.getReal_name();
		String sex=user.getSex();
		String subject_type=user.getSubject_type();
		String province=user.getProvince();
		String city=user.getCity();
		String area=user.getArea();
		String year=user.getYear();
		
		

	}
	
	

}
