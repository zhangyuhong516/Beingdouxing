package com.bdx.service.imp;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.bdx.pojo.Answer;
import com.bdx.service.AnswerService;
import com.bdx.service.core.ServiceBase;

public class AnswerServiceImp extends ServiceBase implements AnswerService {

	@Override
	public List<Answer> getAnswersByQuestion(int questionId)  throws SQLException 
	{
		String sql="select * from answer where questions_id=?";
		List<Answer> list=null;
		list=run.query(cm.getConnection(), sql,new BeanListHandler<Answer>(Answer.class),questionId);
		return list;
	}

	@Override
	public void answerQus(Answer ans) throws SQLException 
	{
		   String sql="insert into answer(questions_id,contents,dates) values(?,?,?)";
		   Connection con=cm.getConnection();
		   run.update(con, sql, ans.getQuestions_id(),
				   ans.getContents(),
				   ans.getDates()
				 
				   );
		   
		
	}

}
