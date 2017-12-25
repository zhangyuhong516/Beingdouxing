package com.bdx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bdx.pojo.Userinfo;
import com.bdx.service.UserService;
import com.bdx.servlet.core.ServletBase;
@WebServlet("/admin/question3")
public class Dosubject3 extends ServletBase 
{
	public static int Realistic=0;
	public static int Investigative=0;
	public static int Artistic=0;
	public static int Social=0;
	public static int Enterprising=0;
	public static int Conventional=0;
	


	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
	    PrintWriter out=resp.getWriter();
	    
	    HttpSession session=req.getSession();
	    
	    for(int i=1;i<=90;i=i+6)
	    {	    	
	    	Realistic=getvalueById(i  , req, Realistic);
	    	Investigative=getvalueById(i+1, req, Investigative);
	    	Artistic=getvalueById(i+2, req, Artistic);
	    	Social=getvalueById(i+3, req, Social);
	    	Enterprising=getvalueById(i+4, req, Enterprising);
	    	Conventional=getvalueById(i+5, req, Conventional);
	    	
	    	
	    		
		}
	    
	    double data[]={Realistic*5,Investigative*5,Artistic*5,Social*5,Enterprising*5,Conventional*5};
	    String []str={"Realistic","Investigative","Artistic","Social","Enterprising","Conventional"};
	    
	    String dataStr="";
	    for(int i=0;i<6;i++)
	    {
	    	dataStr=dataStr+String.valueOf(data[i])+",";
	    }
	   
	    int tem=0;
	    for(int i=1;i<=5;i++)
	    {
	    	tem=data[tem]>data[i]?tem:i;
	    			
	    }
	    String type3=str[tem];
	
	    		
	    
	    
	    String grade_three="grade_three";//确定修改修改哪个测验题的列 
	    String grade_three_type="grade_three_type";//确定修改哪个测验题的结果类型
	    
	    try {
			UserService us=(UserService) this.getService("userService");
			Userinfo user=(Userinfo)session.getAttribute("loged");
			
			user.setGrade_one(dataStr);
			user.setGrade_one_type(type3);
			
			String useremail=user.getEmail();//得到用户本来的Email
			us.updateGradeById(useremail, grade_three, dataStr, grade_three_type, type3);//将分数传进数据库
		} catch (SQLException e) {
			System.out.println("更新失败。。。。。。");
			e.printStackTrace();
		}
//	    session.setAttribute("anwser3", data);	    
	    
//	    System.out.println(Realistic);
//	    System.out.println(Investigative);
//	    System.out.println(Artistic);
//	    System.out.println(Social);
//	    System.out.println(Enterprising);
//	    System.out.println(Conventional);
	    
	    //req.getRequestDispatcher("question_answer.jsp").forward(req, resp);
	    req.getRequestDispatcher("/admin/Evaluate").forward(req, resp);
	}


	
	public int getvalueById (int i,HttpServletRequest req,int t)//得到每道题的value并统计分数
	{
		String str=((Integer)(i)).toString();
    	String it=null!=req.getParameter(str)?req.getParameter(str):null;
    	//System.out.println(it);
    	if(it.equals("true"))
    		{
    			t++;
    			//System.out.println("true-------题目="+i+"-------静态="+t);
    			
    		}
    	return t;
		
	}
	
}
	