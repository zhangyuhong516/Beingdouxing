package com.bdx.service;

import java.sql.SQLException;
import java.util.List;

import com.bdx.pojo.Answer;

public interface AnswerService {

	/**
	 * �ҵ�ָ�������µĴ𰸣�����id��ѯ���ݿ⣬�������еĴ𰸣���һ��List��
	 * @param questionId
	 * @return
	 */
	public List<Answer> getAnswersByQuestion(int questionId)throws SQLException;
	/**
	 * ��ǩ���⣨�����ݿ����������ݣ�
	 * @param questionId
	 * @param ans
	 * @throws SQLException
	 */
	public void answerQus(Answer ans)throws SQLException;
}
