package com.bdx.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

import com.bdx.service.core.ConnectionManager;

/**
 * 定制代理对象调用原始对象的方法模板
 * @author Administrator
 *
 */
public class MyInvocation implements InvocationHandler 
{
   private Object org;//原始对象, 接口的实现类
   public  MyInvocation(Object obj)
   {
	  this.org=obj; 
   }
   
   //将来的代理对象，调用原始对象的方法模板
	@Override
	public Object invoke(Object proxy, Method method, Object[] args)
			throws Throwable 
	{
       Object resutl =null;//原始对象的返回类型
       ConnectionManager cm=ConnectionManager.getInstance();
       cm.startTransaction();
       try {
    	   resutl =method.invoke(org, args);
       cm.commitTransation();
	} catch (Exception e) {
		cm.rollbackTransation();
		e.printStackTrace();
	}finally
	{
		cm.closeConnection();
	}

		return resutl;
	}

}
