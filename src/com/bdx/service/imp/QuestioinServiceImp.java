package com.bdx.service.imp;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.bdx.page.PageDiv;
import com.bdx.pojo.Questions;
import com.bdx.service.QuestionService;
import com.bdx.service.core.ServiceBase;

public class QuestioinServiceImp extends ServiceBase implements QuestionService {

	@Override
	public void addQuestion(Questions que) throws SQLException 
	{
		String sql="insert into questions(title,contents,inter,user_id,dates) values(?,?,?,?,?)";
        run.update(cm.getConnection(), sql, que.getTitle(),
        		que.getContents(),
        		que.getInter(),
        		que.getUser_id(),
        		que.getDates());
	}

	@Override
	public PageDiv<Questions> getAllQuestions(int pageNo, int pageSize) throws SQLException 
	{
		PageDiv<Questions> pd=null;
		
		/*
		

CREATE  FUNCTION answerCounter (qid int) RETURNS int
begin
     declare  tot int;
    select count(id) into tot from answer where questions_id=qid;
	return tot;
end;
		
		 select q.title,q.dates, answerCounter(q.id) as ancount from questions q;
		 */
		
		
		String sql="select q.*,(select count(a.id)  from answer a where a.questions_id=q.id) as ancount from questions q order by q.id desc limit ?,?";
		String total="select count(id) from questions";
		List<Questions> list=null;
		Connection con=cm.getConnection();
		 list=run.query(con, sql, new BeanListHandler<Questions>(Questions.class),((pageNo-1)*pageSize),pageSize);
		 Long tot=(Long)run.query(con, total,new ArrayHandler())[0];
		
		if(null!=list&&null!=tot)
		{
			int totalcount=tot.intValue();
			pd=new PageDiv<>(pageNo, pageSize, totalcount, list);
		}
		return pd;
	}

	@Override
	public List<Questions> getQuestionsByUser(int userId) throws SQLException {
		String sql="select * from questions where user_id=?";
		List<Questions> list=null;
		list=(List<Questions>) run.query(cm.getConnection(), sql, new BeanHandler<Questions>(Questions.class),userId);// TODO Auto-generated method stub
		return list;
	}

	@Override
	public Questions getQuestionById(int id) throws SQLException 
	{
		String sql="select * from questions where id=?";
		Questions q=null;
		q=run.query(cm.getConnection(), sql, new BeanHandler<Questions>(Questions.class),id);
		
		return q;
	}

}
