package com.bdx.service;

import java.sql.SQLException;
import java.util.List;

import com.bdx.pojo.Answer;

public interface AnswerService {

	/**
	 * 找到指定问题下的答案（根据id查询数据库，返回所有的答案，是一个List）
	 * @param questionId
	 * @return
	 */
	public List<Answer> getAnswersByQuestion(int questionId)throws SQLException;
	/**
	 * 回签问题（向数据库中增加数据）
	 * @param questionId
	 * @param ans
	 * @throws SQLException
	 */
	public void answerQus(Answer ans)throws SQLException;
}
