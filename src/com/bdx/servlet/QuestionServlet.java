package com.bdx.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bdx.page.PageDiv;
import com.bdx.pojo.Answer;
import com.bdx.pojo.Questions;
import com.bdx.pojo.Userinfo;
import com.bdx.service.AnswerService;
import com.bdx.service.QuestionService;
import com.bdx.servlet.core.ServletBase;
@WebServlet("/admin/question")
public class QuestionServlet extends ServletBase {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 跳转到问题列表
		System.out.println("----execute----questionservlet");
		QuestionService qs=(QuestionService)this.getService("questionService");
		System.out.println("----getservice finish");
		int pageNo=1;
		int pageSize=5;
		if(0<this.getInt(req, "pageNo"))
		{
			pageNo=this.getInt(req, "pageNo");
		}
		
		
		PageDiv<Questions> pd=null;
		try {
			pd=qs.getAllQuestions(pageNo, pageSize);
			req.setAttribute("pd", pd);
			
		} catch (SQLException e) {
			this.setMessage(req,"获取问题列表失败!");
			e.printStackTrace();
		}
		
		
		
		this.forward(req, resp, "page/questionlist.jsp");

	}
	public void toadd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 跳转到发表问题
		this.forward(req, resp, "page/ask.jsp");

	}
	public void saveAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		Userinfo user=(Userinfo)session.getAttribute("loged");
		
		
		Questions q=new Questions();
		this.getBean(req, q);
		q.setDates(new Date());
		q.setUser_id(user.getId());
		
		QuestionService qs=(QuestionService)this.getService("questionService");
		
		try {
			qs.addQuestion(q);
			this.setMessage(req, "发表问题成功!");
			/*this.forward(req, resp, "page/questionlist.jsp");*/
			/*resp.sendRedirect("page/questionlist.jsp").forword(req,resp);*/
			
		} catch (SQLException e) {
			this.setMessage(req, "发表问题失败!");
			e.printStackTrace();
		}
		this.execute(req, resp);
		/*this.forward(req, resp, "page/ask.jsp");*/

	}
	
	public void getOnequestion(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//跳转到回答问题
		int id=this.getInt(req, "id");
		if(id>0)
		{
			QuestionService qs=(QuestionService)this.getService("questionService");
			AnswerService  as=(AnswerService)this.getService("answerService");
			
			Questions q=null;
			try {
				List<Answer> list=as.getAnswersByQuestion(id);
				q=qs.getQuestionById(id);
				req.setAttribute("question", q);
				req.setAttribute("answerList", list);
				
				
				
				
				this.forward(req, resp, "page/answer.jsp");
				
			} catch (SQLException e) {
				 this.setMessage(req, "查询问题出错 !");
					this.execute(req, resp);
				e.printStackTrace();
			}
		}
		
	

	}

}
