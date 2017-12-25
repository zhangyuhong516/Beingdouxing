package com.bdx.service.core;


import org.apache.commons.dbutils.QueryRunner;


/**
 * 操作数据库的工具类
 * @author Administrator
 *
 */

public class ServiceBase
{
	//单例
    protected ConnectionManager cm=ConnectionManager.getInstance();
    protected static QueryRunner run=new QueryRunner();
    

}
