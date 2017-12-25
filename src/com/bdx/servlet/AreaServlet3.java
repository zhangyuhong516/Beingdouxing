package com.bdx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.alibaba.fastjson.JSONObject;
import com.bdx.pojo.Area;
@WebServlet("/third")
public class AreaServlet3 extends HttpServlet
{
    
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/plain;charset=utf-8");
		PrintWriter out=resp.getWriter();
		
		String pid=null!=req.getParameter("parentId")?req.getParameter("parentId"):"-1";
		
		
		DataSource ds=(DataSource)this.getServletContext().getAttribute("ds");
		QueryRunner run=new QueryRunner(ds);
		String sql="select * from area where parentid=? and style=?";
		List<Area> third=null;
		try {
			third=run.query(sql, new BeanListHandler<Area>(Area.class),pid,0);
			JSONObject  json=new JSONObject();
			json.put("third",third);
			//System.out.println(json.toJSONString());
		  
			out.print(json.toJSONString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		out.close();
		
	}

}
