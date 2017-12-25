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
@WebServlet("/admin/question1")
public class Dosubject extends ServletBase 
{
	private static Integer E=0;
	private static Integer I=0;
	private static Integer S=0;
	private static Integer N=0;
	private static Integer T=0;
	private static Integer F=0;
	private static Integer J=0;
	private static Integer P=0;

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
	    PrintWriter out=resp.getWriter();
	    
	    HttpSession session=req.getSession();
	    
	    for(int i=1;i<=32;i++)
	    {
	    	String str=((Integer)(i)).toString();
	    	String it=req.getParameter(str);
	    	int num=Integer.parseInt(it);
	    	
	    	switch(i){
	    		case 1 :case 5 :case 9 :case 13 :case 17 :case 21 :case 25 :case 29 :
	    			E=E+num;
	    			I=I+5-num;
	    			break;
	    		case 2 :case 6 :case 10 :case 14 :case 18 :case 22 :case 26 :case 30 :
	    			S=S+num;
	    			N=N+5-num;

	    			break;
	    		case 3 :case 7 :case 11 :case 15 :case 19 :case 23 :case 27 :case 31 :
	    			T=T+num;
	    			F=F+5-num;
	    			break;
	    		case 4 :case 8 :case 12 :case 16 :case 20 :case 24 :case 28 :case 32 :	
	    			J=J+num;
	    			P=P+5-num;

	    			break;
	    			
	    	}	
	    }
	    /*out.println(a);
	    out.println(40-a);
	    out.println(c);
	    out.println(40-c);
	    out.println(e);
	    out.println(40-e);
	    out.println(g);
	    out.println(40-g);*/
	    double[] data={E,I,S,N,T,F,J,P};
	    String dataStr="";
	    for(int i=0;i<8;i++)
	    {
	    	dataStr=dataStr+String.valueOf(data[i])+",";
	    }
	    
	    String[] str1={"E","S","T","J"};
	    String[] str2={"I","N","F","P"};
	    String type1="";
	    //取得当前分数对应的字母类型
	    double[] data10 = {E,S,T,J};
		double[] data11 = {I,N,F,P};
		
	    for(int i=0;i<4;i++)
	    {
	    	type1=type1+(data10[i]>data11[i]?str1[i]:str2[i]);
	    }
	    
	    String grade_one="grade_one";//确定修改修改哪个测验题的列 
	    String grade_one_type="grade_one_type";//确定修改哪个测验题的结果类型
	    
	    try {
			UserService us=(UserService) this.getService("userService");
			Userinfo user=(Userinfo) session.getAttribute("loged");
			
			user.setGrade_one(dataStr);
			user.setGrade_one_type(type1);
			
			String useremail=user.getEmail();//得到用户本来的Email
			us.updateGradeById(useremail, grade_one, dataStr, grade_one_type, type1);//将分数传进数据库
		} catch (SQLException e) {
			System.out.println("更新失败。。。。。。");
			e.printStackTrace();
		}
	    
	    session.setAttribute("data10", data10);
	    session.setAttribute("data11", data11);
	    
	    session.setAttribute("type1", type1);
	    
	    //req.getRequestDispatcher("../page/question_list2.jsp").forward(req, resp);
	    this.forward(req, resp, "page/question_list2.jsp");
	    //out.close();
		
	}
}
	