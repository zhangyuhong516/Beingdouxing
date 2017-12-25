package com.bdx.proxy;

import java.lang.reflect.Proxy;

public class ProxyFacotry 
{
	/**
	 * 通过接口名，直接得到接口实现类原始对象的代理对象
	 * @param clazz
	 * @return
	 */
    public static Object getProxy(Class clazz)
    {
    	Object proxy=null;
    	Object org;//原始对象
    	String name=clazz.getName();//得到接口的全限定名
    	//com.iss.dao.imp.EmailDaoImp
    	int lastdot=name.lastIndexOf(".");
    	//根据接口名，拼接口对应的实现类
    	String imp=name.substring(0,lastdot+1)+"imp"+name.substring(lastdot)+"Imp";
    	//加载接口实现类到内存
    	try {
			Class impclazz=Class.forName(imp);
			org=impclazz.newInstance();//实例化原始对象
			MyInvocation myin=new MyInvocation(org);
			proxy=Proxy.newProxyInstance(org.getClass().getClassLoader(), org.getClass().getInterfaces(), myin);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

    	return proxy;
    	
    }
}
