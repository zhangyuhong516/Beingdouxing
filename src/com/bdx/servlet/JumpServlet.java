package com.bdx.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bdx.servlet.core.ServletBase;

@WebServlet("/admin/jump")
public class JumpServlet extends ServletBase {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	
	public void jump2userinfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("------jump2userinfo");
		this.forward(req, resp, "page/userinfo.jsp");
	}
	
	public void jump2userinfo1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/userinfo1.jsp");
	}
	
	public void jump2userinfo2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/userinfo2.jsp");
	}
	
	public void jump2test(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/test.jsp");
	}
	
	public void jump2admin_index(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/admin_index.jsp");
	}
	
	public void jump2question_list1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/question_list1.jsp");
	}
	
	public void jump2EvaluateServlet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.sendRedirect("Evaluate");
	}
	
	public void jump2xinde(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xinde.jsp");
	}
	
	public void jump2collagelist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/collagelist.jsp");
	}
	
	public void jump2beijingdaxue(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/beijingdaxue.jsp");
	}
	
	public void jump2beijingdaxue2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/beijingdaxue2.jsp");
	}
	
	public void jump2beijingdaxue4(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/beijingdaxue4.jsp");
	}
	
	public void jump2beijingdaxue5(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/beijingdaxue5.jsp");
	}
	public void jump2xicai(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xicai.jsp");
	}
	public void jump2xicai2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xicai2.jsp");
	}
	public void jump2xicai3(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xicai3.jsp");
	}
	public void jump2xicai4(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xicai4.jsp");
	}
	public void jump2xicai5(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xicai5.jsp");
	}
	public void jump2xicai6(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		this.forward(req, resp, "page/xicai6.jsp");
	}

}
