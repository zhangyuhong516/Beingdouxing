package com.bdx.service;

import com.bdx.pojo.Evaluateinfo;
import java.sql.SQLException;

public interface EvaluateService {
	/**
	    * 根据用户测试类型取得用户的评价
	    * @param 表名
	    * @param grade_type
		* @param evaluate
		* @throws SQLException
	    */
	   public Evaluateinfo getGradeEvaluateById(String grade_type,String evaluate)throws SQLException;
}
