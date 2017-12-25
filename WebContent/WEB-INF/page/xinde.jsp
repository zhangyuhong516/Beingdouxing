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
	    <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="../kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript">




        KindEditor.ready(function(K) {
        	   //初始化编辑器
                
                window.editor2 = K.create('#txt',{
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : false,
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image', 'link']
				});
                var uploadbutton = K.uploadbutton({
					button : K('#uploadButton1')[0],
					fieldName : 'imgFile',
					url : '',
					afterUpload : function(data) {
						if (data.error === 0) {
							var url = K.formatUrl(data.url, 'absolute');
							K('#url').val(url);
						} else {
							alert(data.message);
						}
					}
                });
                var uploadbutton = K.uploadbutton({
					button : K('#uploadButton2')[0],
					fieldName : 'imgFile',
					url : '',
					afterUpload : function(data) {
						if (data.error === 0) {
							var url = K.formatUrl(data.url, 'absolute');
							K('#url').val(url);
						} else {
							alert(data.message);
						}
					}
                });
                var uploadbutton = K.uploadbutton({
					button : K('#uploadButton3')[0],
					fieldName : 'imgFile',
					url : '',
					afterUpload : function(data) {
						if (data.error === 0) {
							var url = K.formatUrl(data.url, 'absolute');
							K('#url').val(url);
						} else {
							alert(data.message);
						}
					}
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
							  <li class="active">填报心得</li>
							</ol>
					</div>
					
					<!-- <ul class="nav nav-pills nav-tabs">
						  <li role="presentation" class="active"><a href="jump?action=jump2userinfo">个人资料</a></li>
						  <li role="presentation"><a href="jump?action=jump2userinfo2">更新信息</a></li>
						  <li role="presentation"><a href="#">填报心得</a></li>
						  <li role="presentation"><a href="jump?action=jump2EvaluateServlet">个人分析结果</a></li>
					</ul> -->
					
				 	 <img src="../img/ad04.png" class="img-responsive" alt="Responsive image"> 
				 	 <div style="height: 40px;"></div>
				 	<center>
					<form class="form-horizontal" action="" method="post" onsubmit="return check();">
					  <input type="hidden" name="action" value="regist"/>
						<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;录取院校：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="college">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;录取专业：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="major">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;填报心得：</label>
						    <div class="col-sm-7">
						    <textarea rows="5" cols="30" id="txt" style="width: 100%;" name="txt" required="required"></textarea>
						    	
							    
							</div>
					     <span class="help-block" class="col-sm-2" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;最终志愿表：</label>
						    <div class="col-sm-5">
						    <input class="ke-input-text" type="hidden" id="url" value="" readonly="readonly" /> 
						    <input type="button" id="uploadButton1" value="图片上传"  class="btn btn-lg "/>&nbsp;&nbsp;&nbsp;&nbsp;
						    	 <a href="#" class="">查看上传图片</a>
							    
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;我要秀照片：</label>
						    <div class="col-sm-5">
						    	 <input class="ke-input-text" type="hidden" id="url" value="" readonly="readonly" /> 
						    <input type="button" id="uploadButton2" value="图片上传"  class="btn btn-lg "/>&nbsp;&nbsp;&nbsp;&nbsp;
						    	 <a href="#" class="">查看上传图片</a>
							    
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:12px;line-height:34px;vertical-align:baseline;">记得带着录取通知书去学校留影哦</span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">我要秀录取通知书：</label>
						    <div class="col-sm-5">
						    	 <input class="ke-input-text" type="hidden" id="url" value="" readonly="readonly" /> 
						    <input type="button" id="uploadButton3" value="图片上传"  class="btn btn-lg "/>&nbsp;&nbsp;&nbsp;&nbsp;
						    	 <a href="#" class="">查看上传图片</a>
							    
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:12px;line-height:34px;vertical-align:baseline;">最多上传4张照片，可批量上传哦</span>
				    	</div>
				    	
				    	<div class="form-group ">
				   		<button type="submit" class="btn btn-primary" style="text-align: center;">保存</button>
   					 	<span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;">点击“保存”，即表示您同意并愿意遵守<a href="#">《北斗星报考网肖像使用协议》</a></span>
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
    