<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bdx.pojo.*,java.util.*" %>
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
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : false,
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image', 'link']
				});
                
                
                     
        });
        
     
</script>
		
		
		<script type="text/javascript">
	    	$(function(){
	    		$('#mymodal').modal({
	    			backdrop:false,
	    			keyboard:false,
	    			show:true
	    		});
	    		
	    		
	    	/* 	$("#savechan").click(function(){
	    			
	    			alert(document.getElementById("txt").value);
	    		//	$("#savechanform").submit();
	    			
	    			
	    		}); */
	    		});
	  	</script>
		
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
			<h1>
               <%
               
               List<Answer> anList=(List<Answer>)request.getAttribute("answerList");
               Questions q=(Questions)request.getAttribute("question");
               out.println(q.getTitle());
               
               %>
				
				</h1>
				<hr />
				<p class="text-muted"><%=q.getContents() %></p>
				
			<hr />	
			<div class="form-group form-inline">
						    <!-- <label class="col-sm-3 control-label">&lowast;问题标题：</label> -->
						    
					     <span class="glyphicon glyphicon-tags pull-left text-info" >
					     <%=null!=anList?anList.size():"0" %>条回答
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					    <span class="glyphicon glyphicon-share text-info"  >
					    <a href="#" >分享</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					      <span class="glyphicon glyphicon-edit text-info "  >
					     <a href="#" >邀请回答</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					    <span class="glyphicon glyphicon-flag text-info "  >
					    <a href="#" >举报</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					     <span class="glyphicon glyphicon-th-list text-info "  >
					   
					     </span>			 	     
					     
			</div>
			<div style="height: 40px;"></div>
			<div class="panel panel-default ">
			  <div class="panel-body ">
			  
			  <img src="../img/log1.jpg"  alt="Responsive image" style="width: 60px;height: 50px;" />&nbsp;&nbsp;&nbsp;&nbsp;
			    <span>匿名用户</span>
			    <hr/>
			   
	<%
	
	 if(null!=anList&&anList.size()>0)
	 {
		 for(Answer an:anList)
		 {
			 %>
			 <p class=""><%=an.getContents() %></p>
			 <%
		 }
	 }
	%>
			  </div>
			  <div class="panel-footer" style="background-color: white;">
			  <div class="form-group form-inline">
			<div class="btn-group" role="group" aria-label="...">
				  <button type="button" class="btn btn-default">1</button>
				  <button type="button" class="btn btn-default">2</button>
				
				  <div class="btn-group" role="group">
				    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				      Dropdown
				      <span class="caret"></span>
				    </button>
				    <ul class="dropdown-menu">
				      <li><a href="#">Dropdown link</a></li>
				      <li><a href="#">Dropdown link</a></li>
				    </ul>
				  </div>
				</div> &nbsp;&nbsp;&nbsp;
					     <span class="glyphicon glyphicon-text-height  text-info" >
					     <a href="#" data-toggle="modal" data-target="#myModal" >添加评论</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					    <span class="glyphicon glyphicon-share text-info"  >
					    <a href="#" >分享</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					      <span class="glyphicon glyphicon-sunglasses text-info "  >
					     <a href="#" >收藏</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					    <span class="glyphicon glyphicon-heart text-info "  >
					    <a href="#" >感谢</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
					     <span class="glyphicon glyphicon-th-list text-info "  >
					   
					     </span>			 	     
					     
			</div>
			  </div>
			</div>
			
			<!--model开始-->
					<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  					<div class="modal-dialog" role="document">
    				<div class="modal-content">
     				 <div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       				 <h4 class="modal-title  text-info" id="myModalLabel">添加评论</h4>
     				 </div>
     				 
     				 
    			  <form id="savechanform" class="form-horizontal" action="answer" method="post">
    			  <input type="hidden" name="action" value="add">
 				<input type="hidden" name="questions_id" value="<%=q.getId()%>"/>
				  <div class="modal-body">
				  <div class="form-group">
           <!--  <input type="hidden" name="contents" id="ttt"/> -->
           <textarea name="contents" id="txt"  style="width:100%;height:300px;"></textarea>
          
         		 </div>
    		 		
		         </div>
				<div class="modal-footer">
				
		       		 <button type="button" class="btn btn-default" data -dismiss="modal">Close</button>
		       	 
		       	 <button type="submit" class="btn btn-primary" id="savechan" >Save changes</button> 
		    	</div>
				</form>
				
				
      			</div>	
		  </div>
		</div>
			
			
			</div>
				
			
			</div><!-- container结束 -->
			</div><!-- panel-body结束 -->
			</div>

			
			
		
			
	</body>
</html>
