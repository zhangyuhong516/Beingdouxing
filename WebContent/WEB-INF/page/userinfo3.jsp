<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@include file="header.jsp" %>
	<style type="text/css">
		    body{font-family: "微软雅黑"}
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	       
	    </style>
	    
	    <title>北斗星报考网</title>
	    
	</head>
	<body >
		<!--
        	作者：langyamoren@163.com
        	时间：2016-04-09
        	描述：最上面的部分
        -->
        
		<%@include file="top.jsp" %>
		<!--中间区域-->
		
		<div class="container" >
			<div class="row">
				 <div class="col-xs-12 col-sm-3">
				 	 	   	<!--   侧边功能栏-->
				      	  <%@include file="left.jsp" %>
				 </div>
				 <div class="col-sm-9">
				 	 <!--路径导航-->
				 	 <div class="nav">
						  <ol class="breadcrumb" id="aaa">
							  <li><a href="jump?action=jump2admin_index">首页</a></li>
							  <li><a href="#">用户中心</a></li>
							  <li class="active">填报心得</li>
							</ol>
					</div>
				 	  	
				 	
                     <ul class="nav nav-pills nav-tabs">
						  <li role="presentation" class="active"><a href="jump?action=jump2userinfo">个人资料</a></li>
						  <li role="presentation"><a href="jump?action=jump2userinfo2">更新信息</a></li>
						  <li role="presentation"><a href="#">填报心得</a></li>
						  <li role="presentation"><a href="jump?action=jump2EvaluateServlet">个人分析结果</a></li>
					</ul>
					<div style="height: 40px;"></div>
				<center>
					<form class="form-horizontal" action="" method="post" onsubmit="return check();">
					  <input type="hidden" name="action" value="regist"/>
						<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;当前密码：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="pwd">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;新密码：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="nepwd">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;">密码为6—16位数字,字母或者符号</span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;确认密码：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="nepwd">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
				   		<button type="submit" class="btn btn-primary" style="text-align: center;">修改密码</button>
   					 
   						</div>
					</form>
				</center>
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
    