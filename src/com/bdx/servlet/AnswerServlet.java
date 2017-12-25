package com.bdx.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bdx.pojo.Answer;
import com.bdx.service.AnswerService;
import com.bdx.servlet.core.ServletBase;
@WebServlet("/admin/answer")
public class AnswerServlet extends ServletBase {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	
	public void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Answer an=new Answer();
		this.getBean(req, an);
		an.setDates(new Date());
		
		AnswerService  as=(AnswerService)this.getService("answerService");
		try {
			as.answerQus(an);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("question?action=getOnequestion&id="+an.getQuestions_id());
	}

}
