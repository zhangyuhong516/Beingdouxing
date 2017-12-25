package com.bdx.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bdx.pojo.Evaluateinfo;
import com.bdx.pojo.Userinfo;
import com.bdx.service.EvaluateService;
import com.bdx.servlet.core.ServletBase;

/**
 * Servlet implementation class Evaluate
 */
@WebServlet("/admin/Evaluate")
public class Evaluate extends ServletBase 
{

   
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println(".....execute  Evaluate");
		
		HttpSession session=req.getSession();
		//取得第一个测试题的评价
		try 
		{
			EvaluateService ev=(EvaluateService) this.getServletContext().getAttribute("EvaulateService");
			Userinfo user=(Userinfo)req.getSession().getAttribute("loged");
			
			Evaluateinfo eva=ev.getGradeEvaluateById(user.getGrade_one_type(),"evaluate_one");
			
			session.setAttribute("evaluated1",eva.getEvaluate_one());
			System.out.println(eva.getEvaluate_one()+".........");
		
		} 
		catch (SQLException e)
		{
			System.out.println("获取评价失败。。。。。");
			e.printStackTrace();
		}
		
		
		//取得第二个测试题的评价
		try 
		{
			EvaluateService ev=(EvaluateService) this.getServletContext().getAttribute("EvaulateService");
			Userinfo user=(Userinfo) session.getAttribute("loged");
			
			Evaluateinfo eva=ev.getGradeEvaluateById(user.getGrade_two_type(),"evaluate_two");
			
			session.setAttribute("evaluated2",eva.getEvaluate_two());
			System.out.println(eva.getEvaluate_two()+".........");
		
		} 
		catch (SQLException e)
		{
			System.out.println("获取评价失败。。。。。");
			e.printStackTrace();
		}
		
		//取得第三个测试题的评价
		try 
		{
			EvaluateService ev=(EvaluateService) this.getServletContext().getAttribute("EvaulateService");
			Userinfo user=(Userinfo) session.getAttribute("loged");
			
			Evaluateinfo eva=ev.getGradeEvaluateById(user.getGrade_three_type(),"evaluate_three");
			
			session.setAttribute("evaluated3",eva.getEvaluate_three());
			System.out.println(eva.getEvaluate_three()+".........");
		
		} 
		catch (SQLException e)
		{
			System.out.println("获取评价失败。。。。。");
			e.printStackTrace();
		}
		
		
		this.forward(req, resp, "page/question_answer.jsp");
		
		
		
	}

}
