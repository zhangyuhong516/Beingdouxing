 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bdx.page.*,java.util.*,com.bdx.pojo.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
	
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<script type="text/javascript" src="../js/jquery-1.12.1.min.js" ></script>
		<script type="text/javascript" src="../js/bootstrap.min.js" ></script>
		<title>北斗星报考网</title>
		<style type="text/css">
			/* body{ font-family:"微软雅黑"; background: #eee;}
			
			.mytop{  background:green; line-height: 33px; color: white; margin-bottom: 20px;}
			.mytop a{ text-decoration: none; color: white; font-weight: bold;}
			.mytop a:hover{ text-decoration: underline;}
			
			
			.mymain{background: white; margin: 20px 30px;}
			.mymain form{  padding: 30px;} */
		</style>
			</script>
		 	<!-- <script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script> -->
	</head>
	<body>
	<header>
		  	<div class="container-fluid">
		  		  <div class="row">
		  		  	  <div class="col-xs-6 col-md-3">
						<img src="../img/bdxlogo.png" style="margin:20px;" class="img-responsive" />
					</div>
					<div class="col-xs-6 col-md-9">
					    <div class="collapse navbar-collapse" style="margin-top:30px;">	
							<ul id="bdxnav" class="nav nav-pills navbar-right">
							  <li role="presentation"><a href="jump2admin_index">首页</a></li> 
							 <li role="presentation" class="dropdown">
   								 <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> 
    								生涯规划 
    							<span class="caret"></span>
								</a>
    						<ul class="dropdown-menu">
     						<li><a href="jump?action=jump2question_list1"><span class="glyphicon glyphicon-globe"></span>&nbsp;自我评估</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-transfer"></span>&nbsp;文理分科</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-filter"></span>&nbsp;了解专业</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;未来职业</a></li>
   							</ul>
  							</li>
  							 <li role="presentation" class="dropdown">
   								 <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> 
    								学习提升
    							<span class="caret"></span>
								</a>
    						<ul class="dropdown-menu">
     						<li><a href="#"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;学习资料下载</a></li>
   							</ul>
  							</li>
  							 <li role="presentation" class="dropdown">
   								 <a class="dropdown-toggle" data-toggle="dropdown" href="question" role="button" aria-haspopup="true" aria-expanded="false"> 
    								考生论坛
    							<span class="caret"></span>
								</a>
    						<ul class="dropdown-menu">
     						<li><a href="question"><span class="glyphicon glyphicon-check"></span>&nbsp;进入考生论坛</a></li>
   							</ul>
  							</li>
  							 <li role="presentation" class="dropdown">
   								 <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> 
    								数据查询 
    							<span class="caret"></span>
								</a>
    						<ul class="dropdown-menu">
     						<li><a href="jump?action=jump2collagelist"><span class="glyphicon glyphicon-signal"></span>&nbsp;院校数据查询</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-grain"></span>&nbsp;专业数据查询</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-object-align-top"></span>&nbsp;招生计划查询</a></li>
   							</ul>
  							</li>
  							<li role="presentation" class="dropdown">
   								 <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> 
    								用户中心
    							<span class="caret"></span>
								</a>
    						<ul class="dropdown-menu">
     						<li><a href="jump?action=jump2userinfo"><span class="glyphicon glyphicon-user"></span>&nbsp;个人资料</a></li>
							<li><a href="jump?action=jump2userinfo2"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改个人资料</a></li>
							<li><a href="jump?action=jump2xinde"><span class="glyphicon glyphicon-edit"></span>&nbsp;填报心得</a></li>
							<li><a href="jump?action=jump2EvaluateServlet"><span class="glyphicon glyphicon-edit"></span>&nbsp;个人分析结果</a></li>
							
							
   							</ul>
  							</li>
							</ul>
					    </div>
					</div>
		  		  </div>
		  	</div>	
		  </header>
		  <div class="panel panel-info">
					  <div class="panel-heading">
					  </div>
					  <div class="panel-body">
					   <div class="container">
			
									<nav class="navbar navbar-default">
						  <div class="container-fluid">
						    <div class="navbar-header">
						      <img src="../img/log1.jpg" class="img-responsive" alt="Responsive image" style="width: 60px;height: 50px;" />
						    </div>
						    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
						      <ul class="nav navbar-nav">
						        <li><a href="question?action=toadd" ><span class="glyphicon glyphicon-question-sign"></span>&nbsp;&nbsp;&nbsp;提问</a></li>
						      </ul>
						       <ul class="nav navbar-nav">
						        <li><a href="#"><span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;写文章</a></li>
						      </ul>
						      <form class="navbar-form navbar-left" role="search">
						        <div class="form-group">
						          <input type="text" class="form-control" placeholder="输入要检索的问题">
						        </div>
						        <button type="submit" class="btn  btn-info">搜索问题</button>
						      </form>
						      <ul class="nav navbar-nav navbar-right">
						        <li><a href="#">草稿(page)</a></li> 
						      </ul>
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->
						</nav>
			
			<div>
			<ul class="list-group">
				
	<%
	  PageDiv<Questions> pd=(PageDiv<Questions>)request.getAttribute("pd");
	  if(null!=pd&&null!=pd.getList()&&pd.getList().size()>0)
	  {
		  for(Questions q:pd.getList())
		  {
		  %>
		  <li class="list-group-item">
  
  	<span class="badge" style="background-color: #5bc0de; border-radius: 6x;"><%=q.getAncount()%>回答</span>
  	<a href="question?action=getOnequestion&id=<%=q.getId()%>"><%=q.getTitle() %></a></li>
		  <%
		  }
	  }
	%>
  
  <li class="list-group-item">
  	
  	
  	
  	
  	<nav>
  <ul class="pagination">
    <li>
      <a href="question?pageNo=<%=pd.getPageNo()-1>0?pd.getPageNo()-1:1 %>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <%
    for(int i=pd.getStart();i<=pd.getEnd();i++)
    {
    %>
    <li><a href="question?pageNo=<%=i%>"><%=i%></a></li>
    <%
    }
    %>
   
    <li>
    <% 
      int nexpage=(pd.getPageNo()+1)>pd.getTotalPage()?pd.getTotalPage():(pd.getPageNo()+1);
    %>
      <a href="question?pageNo=<%=nexpage%>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    <li>
    当前<%=pd.getPageNo()%>/<%=pd.getTotalPage()%>&nbsp;&nbsp;总共<%=pd.getTotalCount()%>条
    </li>
  </ul>
</nav>
  </li>
</ul>

			</div>
			
			
			</div>
			
					<%
		String msg=(String)request.getAttribute("msg");
		if(null!=msg)
		{
		
		%>

<div class="modal fade " id="showmod">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">温馨提示</h4>
      </div>
      <div class="modal-body">
        <p><%=msg %></p>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
$(function(){
	$('#showmod').modal('show')
});
</script>
		<%
		}
		%>
					   
					   
					 
					  </div>
					</div>
			
	</body>
</html>
