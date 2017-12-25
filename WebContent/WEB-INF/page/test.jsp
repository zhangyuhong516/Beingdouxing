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
							  <li><a href="#">首页</a></li>
							  <li><a href="#">用户中心</a></li>
							  <li class="active">更新信息</li>
							</ol>
					</div>
				 	  	
				 	
                     <ul class="nav nav-pills nav-tabs">
						  <li role="presentation" class="active"><a href="#">个人资料</a></li>
						  <li role="presentation"><a href="#">更新信息</a></li>
						  <li role="presentation"><a href="#">修改密码</a></li>
					</ul>
					<div style="height: 40px;"></div>
				<center>
					hahah
					<form action="upload" enctype="multipart/form-data" method="post">
                    <input type="hidden" value="upload" name="action"/>
                    文件：<input type="file" name="pic" multiple/>
                     描述：<input type="text" name="dis"/>
                    <button type="submit">upload</button>
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
    