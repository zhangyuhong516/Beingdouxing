package com.bdx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bdx.pojo.UpdFile;
import com.bdx.servlet.core.ServletBase;
import com.bdx.util.UploadException;
import com.bdx.util.UploadUtils;

@MultipartConfig
@WebServlet("/admin/upload")//为什么在form中不加admin，但是在这里要加admin，才能找得到

public class UploadServlet extends ServletBase 
{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	public void upload(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		//System.out.println("upload------touxiang ");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out=resp.getWriter();
		
		Collection<Part> parts=req.getParts();
		
		ServletContext sc=this.getServletContext();
		
		String path=sc.getRealPath("ups");//这里是得到ups这个文件夹的路径
		System.out.println(path+"-----------------ups的绝对路径");
		
		String allowmime="image/jpeg,image/pjpeg,image/bmp,image/png";
		
		List<UpdFile> all=null;
		
		try {
			all=UploadUtils.upload(parts, allowmime, 1024*1024*2, path);
			out.print("<h1>上传成功：</h1><ul>");
			if(null!=all)
			{
				for(UpdFile up:all)
				{
					out.println("<li>"+up.getOldname()+"__"+up.getNewname()+"___"+up.getMime()+"</li>");
				}
			}
			out.println("</ul>");
			String pandn=path+"";
			//这里还差把这个完整的路径放入数据库中的Userinfo表中
			this.forward(req, resp, "page/admin_index.jsp");
		} catch (UploadException e) {
			out.println("<h1>上传失败</h1>");
			e.printStackTrace();
		}
		
		out.close();
		
		
		
	}

		
}
