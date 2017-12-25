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
			body{font-family: "微软雅黑"}
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
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
					  <div class="panel-body ">
					   <div class="container ">
						<nav class="navbar navbar-default">
						  <div class="container-fluid col-sm-12  ">
						    <div class="navbar-header col-sm-3 ">
						      <img src="../img/log1.jpg" class="img-responsive" alt="Responsive image" style="width: 60px;height: 50px;" />
						    </div>
						    <div class="collapse navbar-collapse col-sm-9" >
						      
						      <form class="navbar-form navbar-left" role="search">
						        <div class="form-group form-inline ">
						        	<span class="text-primary">院校查询 </span>
						        	
						          <input type="text" class="form-control " style="width: 500px;" placeholder="院校名称">
						          <a type="button" class="btn  btn-info  " href="jump?action=jump2xicai">搜索</a>
						        </div>
						        
						      </form>
						      
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->
						</nav>
						
					</div>
					
					<div class="table-responsive table-hover">
						
					 <table class="table  ">
					 	
  							<tr>
  								<th >所在地区：</th>
  								<td><a class="text-primary" >北京</a></td>
  								<td><a class="text-primary" >上海</a></td>
  								<td><a class="text-primary" >江苏</a></td>
  								<td><a class="text-primary" >浙江</a></td>
  								<td><a class="text-primary" >四川</a></td>
  								<td><a class="text-primary" >湖北</a></td>
  								<td><a class="text-primary" >安徽</a></td>
  								<td><a class="text-primary" >辽宁</a></td>
  								<td><a class="text-primary" >河南</a></td>
  								<td><a class="text-primary" >福建</a></td>
  								<td><a class="text-primary" >天津</a></td>
  								<td><a class="text-primary" >河北</a></td>
  								<td><a class="text-primary" >山西</a></td>
  								<td><a class="text-primary" >吉林</a></td>
  								<td><a class="text-primary" >江西</a></td>
  								<td><a class="text-primary" >山东</a></td>
  								<td><a class="text-primary" >湖南</a></td>
  								<td>
  									<a class="btn btn-info" role="button" data-toggle="collapse" href="#sub1" >
 									收起</a>
  								</td>
  							</tr>
  							<tr id="sub1" class=" collapse" >
  								<td><a class="text-primary" >  </a></td>
  								<td><a class="text-primary" >广东</a></td>
  								<td><a class="text-primary" >广西</a></td>
  								<td><a class="text-primary" >海南</a></td>
  								<td><a class="text-primary" >重庆</a></td>
  								<td><a class="text-primary" >贵州</a></td>
  								<td><a class="text-primary" >云南</a></td>
  								<td><a class="text-primary" >西藏</a></td>
  								<td><a class="text-primary" >陕西</a></td>
  								<td><a class="text-primary" >甘肃</a></td>
  								<td><a class="text-primary" >青海</a></td>
  								<td><a class="text-primary" >宁夏</a></td>
  								<td><a class="text-primary" >新疆</a></td>
  								<td><a class="text-primary" >香港</a></td>
  								<td><a class="text-primary" >黑龙江</a></td>
  								<td><a class="text-primary" >内蒙古</a></td>
  								<td><a class="text-primary" >澳门</a></td>
  								
  							</tr>
  							<tr>
  								<th >院校特色：</th>
  								<td><a class="text-primary" >211院校</a></td>
  								<td><a class="text-primary" >985院校</a></td>
  								<td><a class="text-primary" >研究生院</a></td>
  								<td>  </td>
  							</tr>
  							<tr>
  								<th >院校举办：</th>
  								<td><a class="text-primary" >公办</a></td>
  								<td><a class="text-primary" >民办</a></td>
  								<td>  </td>
  							</tr>
  							<tr>
  								<th >学历层次：</th>
  								<td><a class="text-primary" >本科</a></td>
  								<td><a class="text-primary" >高职（专科）</a></td>
  								<td><a class="text-primary" >本科/高职（专科）</a></td>
  								<td>  </td>
  							</tr>
  							<tr>
  								<th >院校类型：</th>
  								<td><a class="text-primary" >综合</a></td>
  								<td><a class="text-primary" >工科</a></td>
  								<td><a class="text-primary" >艺术</a></td>
  								<td><a class="text-primary" >医药</a></td>
  								<td><a class="text-primary" >政法</a></td>
  								<td><a class="text-primary" >农业</a></td>
  								<td><a class="text-primary" >民族</a></td>
  								<td><a class="text-primary" >财经</a></td>
  								<td><a class="text-primary" >师范</a></td>
  								<td><a class="text-primary" >军事</a></td>
  								<td><a class="text-primary" >林业</a></td>
  								<td><a class="text-primary" >体育</a></td>
  								<td><a class="text-primary" >语言</a></td>
  								
  							</tr>
  							</table>
  						</div>
  						<div class="panel panel-info"></div>
  						<ul class="nav nav-tabs ">
						  <li role="presentation" class="active"><a href="#">综合排序&darr;</a></li>
						  <li role="presentation"><a href="#">录取难度&darr;</a></li>
						  <li role="presentation"><a href="#">热门程度&darr;</a></li>
						</ul>
						<div class="table-responsive table-hover table-striped">
							
							<table class="table" >
								<tr class="info" style="background-color: #1a91d5;">
									<td class="info text-center " style="background-color: #1a91d5;">院校名称</td>
									<td class="info text-center " style="background-color: #1a91d5;">院校排名</td>
									<td class="info text-center " style="background-color: #1a91d5;">所在地区</td>
									<td class="info text-center " style="background-color: #1a91d5;">院校隶属</td>
									<td class="info text-center "style="background-color: #1a91d5;">办学类型</td>
									
								</tr>
								<tr >
									<td class="text-primary  " >
										<a href="jump?action=jump2beijingdaxue" class="">北京大学</a>
										<div class=" ">
											<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">211</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">985</span>
										<span class="badge  " style="background-color:#2bbeee; border-radius: 4x;">公</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">综</span>
										</div>
										
									</td>
									
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">
										<span class="badge " style="background-color: #05dce9; border-radius: 6x;">全国</span>&nbsp;&nbsp;
										<span class="">1</span>&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="badge " style="background-color:#05e960; border-radius: 6x;">综合</span>&nbsp;&nbsp;
										<span class="">1</span>
										
									</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">北京市</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">教育部</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">大学</td>
									
								</tr>
								<tr class="active" >
									<td class="text-primary  " >
										<a href="#" class="">清华大学</a>
										<div class=" ">
											<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">211</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">985</span>
										<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">公</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">工</span>
										</div>
										
									</td>
									
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">
										<span class="badge " style="background-color: #05dce9; border-radius: 6x;">全国</span>&nbsp;&nbsp;
										<span class="">2</span>&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="badge " style="background-color:#05e960; border-radius: 6x;">综合</span>&nbsp;&nbsp;
										<span class="">1</span>
										
									</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">北京市</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">教育部</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">大学</td>
									
									<tr >
									<td class="text-primary  " >
										<a href="#" class="">武汉大学</a>
										<div class=" ">
											<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">211</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">985</span>
										<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">公</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">综</span>
										</div>
										
									</td>
									
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">
										<span class="badge " style="background-color: #05dce9; border-radius: 6x;">全国</span>&nbsp;&nbsp;
										<span class="">3</span>&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="badge " style="background-color:#05e960; border-radius: 6x;">综合</span>&nbsp;&nbsp;
										<span class="">2</span>
										
									</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">湖北-武汉市</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">教育部</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">大学</td>
									
								</tr>
								<tr class="active" >
									<td class="text-primary  " >
										<a href="#" class="">复旦大学</a>
										<div class=" ">
											<span class="badge  " style="background-color:#2bbeee; border-radius: 4x;">211</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">985</span>
										<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">公</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">综</span>
										</div>
										
									</td>
									
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">
										<span class="badge " style="background-color: #05dce9; border-radius: 6x;">全国</span>&nbsp;&nbsp;
										<span class="">4</span>&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="badge " style="background-color:#05e960; border-radius: 6x;">综合</span>&nbsp;&nbsp;
										<span class="">3</span>
										
									</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">上海市</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">教育部</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">大学</td>
									
								</tr>
								<tr >
									<td class="text-primary  " >
										<a href="#" class="">浙江大学</a>
										<div class=" ">
											<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">211</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">985</span>
										<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">公</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">综</span>
										</div>
										
									</td>
									
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">
										<span class="badge " style="background-color: #05dce9; border-radius: 6x;">全国</span>&nbsp;&nbsp;
										<span class="">5</span>&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="badge " style="background-color:#05e960; border-radius: 6x;">综合</span>&nbsp;&nbsp;
										<span class="">4</span>
										
									</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">浙江-杭州市</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">教育部</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">大学</td>
									
								</tr>
								<tr class="active" >
									<td class="text-primary  " >
										<a href="#" class="">上海交通大学</a>
										<div class=" ">
											<span class="badge  " style="background-color: #2bbeee; border-radius: 4x;">211</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">985</span>
										<span class="badge  " style="background-color:#2bbeee; border-radius: 4x;">公</span>
										<span class="badge " style="background-color: #2bbeee; border-radius: 4x;">综</span>
										</div>
										
									</td>
									
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">
										<span class="badge " style="background-color: #05dce9; border-radius: 6x;">全国</span>&nbsp;&nbsp;
										<span class="">6</span>&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="badge " style="background-color:#05e960; border-radius: 6x;">综合</span>&nbsp;&nbsp;
										<span class="">5</span>
										
									</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">上海市</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">教育部</td>
									<td class="text-primary text-center  text-capitalize" style="vertical-align:bottom">大学</td>
									
								</tr>
								
							</table>
						</div>
						
						<nav>
  <ul class="pagination pull-right">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
					
				</div><!--panel-body结束-->
			</div>
				
			
	</body>
</html>
