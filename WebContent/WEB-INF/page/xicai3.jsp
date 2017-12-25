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
		 	*{
			    margin:0px;
			    padding:0px;
			}
			body, button, input, select, textarea {
			    font: 12px/16px Verdana, Helvetica, Arial, sans-serif;
			}
		 	 body{font-family: "微软雅黑"}
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	    	
		 </style>
		 <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=43UBZ-5KE3S-3LOON-65IUW-HG43O-VUFOQ"></script>
		<script>
    		function init() {
    	
    	
		    // 创建街景
		        pano = new qq.maps.Panorama(document.getElementById('pano_container'), {
		            "pano": "10161051150515151959100",
		            "pov":{
		                heading:260.2,
		                pitch:2.7
		            }
		        });
		    }
		</script>
			
		 	
	</head>
	<body onLoad="init();">
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
		  
<div class="panel ">
					  <div class="panel-heading">
					  	<img src="../img/bar-xicai.jpg" style="width: 1250px;height: 200px;"/>
					  </div>
					  <div class="panel-body ">
					<div class="container" >
			<div class="row">
				 <div class="col-xs-12 col-sm-3">
				 	 	   	<!--   侧边功能栏-->
				      	  <div class="navbar-default navbar-collapse" id="slider_sub">
				      	   	   <ul class="nav">
				      	   	        
				      	   	   	    <li>
				      	   	   	  	 <a href="#sub1" >院校概况<span class="glyphicon glyphicon-home pull-right"></span></a>

				      	   	   	  </li>
				      	   	   	  <li>
				      	   	   	  	 <a href="jump?action=jump2xicai2"  >名校展播<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	  
				      	   	   	  </li>
				      	   	   	   
				 	              <li>
				      	   	   	  	 <a href="jump?action=jump2xicai3"  >全景校园<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     
				      	   	   	  </li>
				      	   	   	    <li>
				      	   	   	  	 <a href="jump?action=jump2xicai4"  >录取数据<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     
				      	   	   	  
				      	   	   	  </li>
				      	   	   	  <li>
				      	   	   	  	 <a href="jump?action=jump2xicai5"  >就业走向<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     
				      	   	   	  
				      	   	   	  </li>
				      	   	   	  
				      	   	   	  <li>
				      	   	   	  	 <a href="jump?action=jump2xicai6"  >招生章程<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	    
				      	   	   	  
				      	   	   	  </li>
				      	   	   	 
				      	   	   </ul>
				      	   	  </div>
				      	   	  
				 </div>
				 
				 <div class="col-sm-9">
				 	 <!--路径导航-->
				 	 <div class="nav">
						  <ol class="breadcrumb" id="aaa">
							  <li><a href="#">西安财经学院全景校园</a></li>
							  
							</ol>
					</div>
					
				
                   <div style="width:850px;height:400px" id="pano_container"></div>
                   
						
				</div>
				 
				 </div>
				 </div>
					
					
						
						
					
				</div><!--panel-body结束-->
			</div>
  							
				
			
	</body>
</html>
