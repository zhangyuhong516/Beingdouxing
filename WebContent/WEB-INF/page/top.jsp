<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav style="margin-bottom:10px;" class="navbar navbar-default navbar-static-top"  >
      	   <div class="navbar-header" >
      	   	<!--当小屏幕时显示的菜单 -->
      	   	   <button type="button"  class="navbar-toggle collapsed" data-toggle="collapse" data-target="#slider_sub" >
      	   	   	   <span class="sr-only"></span>
      	   	   	   <span class="icon-bar"></span>
      	   	   	   <span class="icon-bar"></span>
      	   	   	   <span class="icon-bar"></span>
      	   	   </button>
      	   	   <a class="navbar-brand" href="#page-top">
      	   	       <img class="img-responsive" src="../img/bar.jpg" alt="" />
      	   	   </a>
      	   	   
      	   	   
      	   	
      	   </div>
      	   <!--欢迎信息-->
      	   <!--<p class="navbar-text"> Welcoem,<mark>${sessionScope.loged.name}</mark>!</p>-->
      	   
      	   <ul class="nav navbar-nav navbar-right" style="margin-right:25px;">
      	      <li><a href="jump2admin_index"><span class="glyphicon"></span>&nbsp;首页</a></li>
      	      <li><a href="jump?action=jump2question_list1"><span class="glyphicon"></span>&nbsp;生涯规划</a></li>
      	      <li><a href="question"><span class="glyphicon"></span>&nbsp;考生论坛</a></li>
      	      <li><a href="jump?action=jump2userinfo"><span class="glyphicon"></span>&nbsp;用户中心</a></li>
      	   	  <li>
      	   	  <a href="login?action=logout"><span class="glyphicon glyphicon-off"></span>&nbsp;注销</a>
      	   	  </li>
      	   </ul>
      	  <div class="clearfix"></div>
		</nav>