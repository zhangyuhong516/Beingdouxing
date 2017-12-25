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
	       
	       .zhiyuan-introduction article{padding:30px}
	    	.zhiyuan-introduction .con{padding-bottom:50px;text-align:justify}
	    	.zhiyuan-introduction .con>img{display:block !important;margin:0 auto;padding-top:25px}
	    	.zhiyuan-introduction .con h4{font-size:24px;font-weight:400;padding:20px 0;text-align:center}
	    	.zhiyuan-introduction .con>p{line-height:2em;margin-bottom:40px}
	    	.zhiyuan-introduction .con p.description{font-size:14px;text-align:center;color:#999}
	    	.zhiyuan-heading h1{font-size:22px;font-weight:bold; line-height:46px;position:relative;height:46px;padding-left:20px;color:#f70;border-bottom:1px solid #e1e1e1}
	    	.zhiyuan-heading h1 i{position:relative;top:4px;display:inline-block;width:9px;height:24px;margin-right:8px;}
	       
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
							</ol>
					</div>
				 	  	
				 	 <div class="zhiyuan-introduction">
				 	  <section class="zhiyuan-heading">
                        <h1><i></i>系统介绍</h1>
                    </section>
                  
                    <article>
                        <!-- 前程规划系统 start -->
                        <div class="subtitle">
                            <h2 class="text-center" style="font-weight: bold; color:#f70;">前程规划系统</h2>
                            <p class="description text-info text-center">为中学生提供生涯规划、学习提升和志愿填报一站式升学服务的综合平台</p>
                        </div>
                        <div class="con">
                            <p class="text-muted">好前程，早规划！做好规划，赢在未来！前程规划系统，提供一站式升学服务。系统针对学生在中学生涯中所遇到的未来迷茫、学习成绩难提高及如何精准填报高考志愿等问题，提炼升级3大核心模块：自我评估、院校查询和
考生论坛，科学指导考生提早规划人生，指引职业方向，迈入理想大学！</p>
                   <img src="../img/i.jpg" alt="生涯规划，学习提升，志愿填报" title="生涯规划，学习提升，志愿填报" style="display: block;" width="709" height="651" />
						</div>
						</div>
						
						<div class="zhiyuan-introduction">
				 	  <section class="zhiyuan-heading">
                        <h1><i></i>生涯讲堂</h1>
                    </section>
                  
                    <article>
                        <!-- 前程规划系统 start -->
                        <!--<div class="subtitle">
                            <h2 class="text-center" style="font-weight: bold; color:#f70;">前程规划系统</h2>
                            <p class="description text-info text-center">为中学生提供生涯规划、学习提升和志愿填报一站式升学服务的综合平台</p>
                        </div>-->
                        <div class="con">
                            <p class="text-muted">帮助高中生认识自我，找准方向、选对专业，为未来职业生涯夯实基础。北斗星报考网特邀专家讲师解析如何规划你的生涯，什么是规划、如何规划、如何调试心理、如何根据规划填报好志愿，全面为你拨开未来人生迷雾，并有综合测评让你的生涯规划更合身！</p>
                            
                   <img src="../img/shouye2.jpg" alt="生涯规划，学习提升，志愿填报" title="生涯规划，学习提升，志愿填报" style="display: block;"  width="900px" height="400px" />
                   <img src="../img/shouye3.jpg" alt="生涯规划，学习提升，志愿填报" title="生涯规划，学习提升，志愿填报" style="display: block;"  width="900px" height="400px" />
                   <img src="../img/shouye4.jpg" alt="生涯规划，学习提升，志愿填报" title="生涯规划，学习提升，志愿填报" style="display: block;"  width="900px" height="400px" />
                   <img src="../img/shouye5.jpg" alt="生涯规划，学习提升，志愿填报" title="生涯规划，学习提升，志愿填报" style="display: block;"  width="900px" height="200px" />
                   <img src="../img/shouye6.jpg" alt="生涯规划，学习提升，志愿填报" title="生涯规划，学习提升，志愿填报" style="display: block;"  width="900px" height="400px" />
						</div>
						</div>
						
						
						</article>
				</div>
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网(page)&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
    