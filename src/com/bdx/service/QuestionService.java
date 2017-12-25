package com.bdx.service;

import java.sql.SQLException;
import java.util.List;

import com.bdx.page.PageDiv;
import com.bdx.pojo.Questions;

public interface QuestionService 
{
    /**
     * 发表一个问题 （向数据库中增加数据）
     * @param que
     * @throws SQLException
     */
	public void addQuestion(Questions que)throws SQLException;
	
	/**
	 * 分页查询所有问题 （从数据库中查询所有问题并且取出来，并且进行分页）
	 * @param pageNo
	 * @param pageSize
	 * @return
	 * @throws SQLException
	 */
	public PageDiv<Questions> getAllQuestions(int pageNo,int pageSize)throws SQLException;
	
	/**
	 * 找到指定用户下的所有问题（根据用户的ID从数据库中取出问题，得到的是一个list）
	 * @param userId
	 * @return
	 * @throws SQLException
	 */
	public List<Questions> getQuestionsByUser(int userId)throws SQLException;
	
	public Questions getQuestionById(int id)throws SQLException;
	
}
