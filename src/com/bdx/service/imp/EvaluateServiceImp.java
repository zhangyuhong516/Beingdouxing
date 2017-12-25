package com.bdx.service.imp;

import java.sql.SQLException;

import org.apache.commons.dbutils.handlers.BeanHandler;

import com.bdx.pojo.Evaluateinfo;
import com.bdx.pojo.Userinfo;
import com.bdx.service.EvaluateService;
import com.bdx.service.core.ServiceBase;

public class EvaluateServiceImp extends ServiceBase implements EvaluateService {

	@Override
	public Evaluateinfo getGradeEvaluateById(String grade_type,String evaluate)throws SQLException 
	{
		System.out.println("...getGradeEvaluateById...");
		Evaluateinfo eva=null;
		try {
			String sql="select "+evaluate+" from evaluateinfo where zimu_type='"+grade_type+"' ";
			System.out.println(sql);
			eva=run.query(cm.getConnection(),sql,new BeanHandler<Evaluateinfo>(Evaluateinfo.class));
			System.out.println(eva+"...................");
		} catch (Exception e) {
			System.out.println("ERROR_011_UserServiceImp_获取用户评价失败 ...");
			e.printStackTrace();
			throw e;
		}
		return eva;
	}


}
