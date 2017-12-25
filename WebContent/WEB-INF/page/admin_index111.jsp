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
							  <li><a href="#">首页</a></li>
							  <li><a href="#">栏目</a></li>
							  <li class="active">内容</li>
							</ol>
					</div>
				 	  	
				 	
                     <p>main</p>
                       <p>main</p>
                         <p>main</p>
                           <p>main</p>
                             <p>main</p>
                               <p>main</p>
                               <form action="admin/question" method="post">
                               <input type="hidden" value="">
                               <button type="submit">question</button>
                               </form>
                                 <p>main</p>
                                   <p>main</p>
                                     <p>main</p>
                                       <p>main</p>
                                         <p>main</p>
                               <form action="admin/jump" method="post">
                               <input type="hidden" value="jump2userinfo1" name="action"/>
                               <button type="submit">userinfo1</button>
                               </form>
       
     <li><a href="userinfo1.jsp">&nbsp;userinfo1</a></li>
     <li><a href="userinfo2.jsp">&nbsp;userinfo2</a></li>
     <li><a href="userinfo3.jsp">&nbsp;userinfo3</a></li>
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网(page)&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
    