package com.bdx.listener;
//监听器
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.bdx.service.imp.AnswerServiceImp;
import com.bdx.service.imp.EvaluateServiceImp;
import com.bdx.service.imp.QuestioinServiceImp;
import com.bdx.service.imp.UserServiceImp;
import com.mchange.v2.c3p0.ComboPooledDataSource;
@WebListener
public class WebInit implements ServletContextListener
{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) 
	{
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0)//在ServletContext创建的时候就运行的方法
	{
		ServletContext sc=arg0.getServletContext();//这些在ServletContext中现在创建的Attribute一会在各个Servlet中就可以用
		sc.setAttribute("userService", new UserServiceImp());
		sc.setAttribute("questionService", new QuestioinServiceImp());
		sc.setAttribute("answerService", new AnswerServiceImp());
		sc.setAttribute("EvaulateService", new EvaluateServiceImp());
		ComboPooledDataSource ds=new ComboPooledDataSource();//这个的意思就是在ServletContext初始化的时候就初始化连接池。
		arg0.getServletContext().setAttribute("ds",ds);//将连接池对象存到ServletContextAttribute中，到时候直接getAttribute就能用了

	}

}
