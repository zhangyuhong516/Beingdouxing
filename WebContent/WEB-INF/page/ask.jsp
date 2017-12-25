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
		
		 <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
 <script charset="utf-8" src="../kindeditor/lang/zh-CN.js"></script>  

<script type="text/javascript">
        KindEditor.ready(function(K) {
        	   //初始化编辑器
                
        	 window.editor = K.create('#txt',{
                 uploadJson : 'upload_pic',
                 //fileManagerJson : '../asp/file_manager_json.asp',
                 allowFileManager : false
         });
                
                
               
                             
        });
        
     
</script>
		
		
			
		 	<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script> 
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
   								 <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> 
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
								
			
			<div>
			<div style="height: 40px;"></div>
	
			<form class="form-horizontal" action="question" method="post">
				<input type="hidden" value="saveAdd" name="action"/>
						<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;问题标题：</label>
						    <div class="col-sm-5">
							    <input type="text" class="form-control " required="required" placeholder="请输入问题简述" name="title">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;问题说明：</label>
						    <div class="col-sm-7">
						    <textarea name="contents" id="txt"  style="width:100%;height:300px;"></textarea>
						    
				<!-- <textarea rows="5" cols="30" id="txt" style="width: 100%;" name="contents" required=""></textarea>  -->
						    	
							    
							</div>
					     <span class="help-block" class="col-sm-2" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group form-inline">
						    <label class="col-sm-3 control-label"></label>
						    <div class="col-sm-5 checkbox">
								<label>
							      <input type="checkbox" value="">&nbsp;&nbsp;&nbsp;匿名
							    </label>
							</div>
							<div class="col-sm-4"></div>
							
							<a type="button" class="btn btn-link" href="page/questionlist.jsp">取消</a>
					     	<button type="submit" class="btn btn-primary">发布</button>
				    	</div>
				    	
				    	
				    
				    </form>
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
