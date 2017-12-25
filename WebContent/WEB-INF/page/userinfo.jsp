<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bdx.pojo.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@include file="header.jsp" %>
	<style type="text/css">
		    body{font-family: "微软雅黑"}
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	    	.userInfo{width:320px;height:385px;background-color:#fff;border-radius:3px;padding-top:40px;padding-left:30px;padding-right:30px}
	   		 .userInfo dl{line-height:0px;padding:0 0}
	   		 .userInfo dl dt{width:40%;float:left;padding:5px 5% 5px 0;text-align:right}
	   		 .userInfo dl dd{overflow:hidden;color:#333;padding:5px 0}
	   		 .userInfo dl dd span.name{font-size:18px;color:#333}
	   		  .userInfo dl dd span.rank{color:#f70}
	       
	    </style>
	    
	    <title>北斗星报考网</title>
	    <link rel="stylesheet" href="./kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="./kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="./kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript">

KindEditor.ready(function(K) {
	   //初始化编辑器
       var editor = K.editor({
					allowFileManager : true
				});
        
        
        K('#pic1').click(function() {
			editor.loadPlugin('image', function() {
				editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) 
					{
						K('#inpic1').val(url);
					    K('#pic1').attr("src",url);
						editor.hideDialog();
					}
				});
			});
		});
        
       
        
});


</script>
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
							  <li class="active">个人资料</li>
							</ol>
					</div>
				 	  	
				 	
                     <ul class="nav nav-pills nav-tabs">
						  <li role="presentation" class="active"><a href="#">个人资料</a></li>
						  <li role="presentation"><a href="jump?action=jump2userinfo2">更新信息</a></li>
						  <li role="presentation"><a href="jump?action=jump2xinde">填报心得</a></li>
						  <li role="presentation"><a href="jump?action=jump2EvaluateServlet">个人分析结果</a></li>
					</ul>
					<div style="height: 40px;"></div>

				<center>
				<%Userinfo user=(Userinfo)session.getAttribute("loged");
				
				%>
				<div class="userInfo">
                       
                       <dl>
                            <dt>用户名：</dt>
                            <dd><%out.println(user.getEmail()); %></dd>
                        </dl>
                        <dl>
                            <dt>考生姓名：</dt>
                            <dd><span class="name"><%out.println(user.getReal_name()); %></span></dd>
                        </dl>
                         <dl>
                            <dt>考生性别：</dt>
                            <dd><%out.println(user.getSex()); %></dd>
                        </dl>
                        
                        <dl>
                            <dt>所在省市：</dt>
                            <dd><%out.println(user.getEmail()); %></dd>
                        </dl>
                        <dl>
                            <dt>学生类别：</dt>
                            <dd><%out.println(user.getSubject_type()); %></dd>
                        </dl>
                       <dl>
                            <dt>高考年份：</dt>
                            <dd><span class="rank"><%out.println(user.getYear()); %></span></dd>
                        </dl>
                        <dl>
                            <dt>考生成绩：</dt>
                            <dd><%out.println(user.getUser_scores()); %></dd>
                        </dl>
                        <dl>
                            <dt>高考位次：</dt>
                            <dd><%out.println(user.getUser_rank()); %></dd>
                        </dl>
                        
                    </div>
				
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
    