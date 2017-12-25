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
			
		 	<script>
		 	
			  function t1show()
			  {
			  	document.getElementById('t1').style.display="block";
			  	document.getElementById('t2').style.display="none";
			  	document.getElementById('t3').style.display="none";
			  }
			  function t2show()
			  {
			  	document.getElementById('t1').style.display="none";
			  	document.getElementById('t2').style.display="block";
			  	document.getElementById('t3').style.display="none";
			  }
			  function t3show()
			  {
			  	document.getElementById('t1').style.display="none";
			  	document.getElementById('t2').style.display="none";
			  	document.getElementById('t3').style.display="block";
			  }
			  	
			  	
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
					  	<img src="../img/bar-beijing.jpg" style="width: 1250px;height: 200px;"/>
					  </div>
					  <div class="panel-body ">
					<div class="container" >
			<div class="row">
				 <div class="col-xs-12 col-sm-3">
				 	 	   	<!--   侧边功能栏-->
				      	  <div class="navbar-default navbar-collapse" id="slider_sub">
				      	   	   <ul class="nav">
				      	   	        
				      	   	   	    <li>
				      	   	   	  	 <a href="jump?action=jump2beijingdaxue" >院校概况<span class="glyphicon glyphicon-home pull-right"></span></a>

				      	   	   	  </li>
				      	   	   	  <li>
				      	   	   	  	 <a href="jump?action=jump2beijingdaxue2"  >名校展播<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	  
				      	   	   	  </li>
				      	   	   	   
				 	              <li>
				      	   	   	  	 <a href="#sub2"  >全景校园<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     
				      	   	   	  </li>
				      	   	   	    <li>
				      	   	   	  	 <a href="jump?action=jump2beijingdaxue4"  >录取数据<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     
				      	   	   	  
				      	   	   	  </li>
				      	   	   	  
				      	   	   	  <li>
				      	   	   	  	 <a href="jump?action=jump2beijingdaxue5"  >招生章程<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	    
				      	   	   	  
				      	   	   	  </li>
				      	   	   	 
				      	   	   </ul>
				      	   	  </div>
				      	   	  
				 </div>
				 
				 <div class="col-sm-9">
				 	 <!--路径导航-->
				 	 <div class="nav">
						  <ol class="breadcrumb" id="aaa">
							  <li><a href="#">北京大学录取数据</a></li>  
							</ol>
					</div>
					
					
					<div>

  <!-- Nav tabs -->
  <div id="myTabs">
  <ul class="nav nav-pills nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" onclick="t1show();">院校录取数据</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" onclick="t2show();">专业录取数据</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab" onclick="t3show();">招生计划数据</a></li>
    
  </ul>
  </div>
  <div style="height: 40px;"></div>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="t1" >
    
    <fieldset  >
								<legend></legend>

                                        <span>
                                            <input type="hidden" name="collegeId" value="1"> 
                                            <input type="hidden" name="collegeName" value="北京大学">  
                                        </span>
                                        <span>
                                            <select class="g-input g-system-input"  id="dropCollegeProvince" required data-validator="请选择招生地区">
                                                <option value="" selected="">请选择省份</option><optgroup label="A"><option value="安徽">安徽</option></optgroup><optgroup label="B"><option value="北京">北京</option></optgroup><optgroup label="C"><option value="重庆">重庆</option></optgroup><optgroup label="F"><option value="福建">福建</option></optgroup><optgroup label="G"><option value="广东">广东</option><option value="广西">广西</option><option value="贵州">贵州</option><option value="甘肃">甘肃</option></optgroup><optgroup label="H"><option value="河北">河北</option><option value="黑龙江">黑龙江</option><option value="河南">河南</option><option value="湖北">湖北</option><option value="湖南">湖南</option><option value="海南">海南</option></optgroup><optgroup label="J"><option value="吉林">吉林</option><option value="江苏">江苏</option><option value="江西">江西</option></optgroup><optgroup label="L"><option value="辽宁">辽宁</option></optgroup><optgroup label="N"><option value="内蒙古">内蒙古</option><option value="宁夏">宁夏</option></optgroup><optgroup label="Q"><option value="青海">青海</option></optgroup><optgroup label="S"><option value="山西">山西</option><option value="山东">山东</option><option value="四川">四川</option><option value="陕西">陕西</option></optgroup><optgroup label="T"><option value="天津">天津</option></optgroup><optgroup label="X"><option value="新疆">新疆</option></optgroup><optgroup label="Y"><option value="云南">云南</option></optgroup><optgroup label="Z"><option value="浙江">浙江</option></optgroup>
                                            </select>
                                        </span>
                                        <input type="hidden" id="dropCollegeProvince_provinceName" name="provinceName">
                                        <span>
                                            <select class="g-input g-system-input" id="dropCollegeLiberalScience" name="liberalScience"  required data-validator="请选择考生科类">
                                                <option selected value="">考生科类</option>
                                                <option value="1">理科</option>
                                                <option value="0">文科</option>
                                            </select>
                                        </span>
                                        <span>
                                            <select class="g-input g-system-input" id="dropCollegePhase" name="phase" required data-validator="请选择录取批次">
                                            	 <option selected value="">请选择批次</option>
                                                <option value="1">本科一批</option>
                                                <option value="2">本科二批</option>
                                                 <option value="3">本科三批</option>
                                                 <option value="3">高职专科批</option>
                                            </select>
                                        </span> 
                                        <input  type="hidden"  id="J-modal_code-input" name="code"  value = "">
                                        <span class="action"><button class="g-button g-button-blue-linear" data-userauthority="1" type="button">查询</button></sapn>
                                    <legend></legend>
							</fieldset>
							<div style="height: 10px;"></div>
							
							<p class="text-muted"><i></i>为您查询到&nbsp;<span style="color:#f70 ;font-weight: bold;font-size: 14px;">北京大学</span>符合<span style="color:#f70 ;font-weight: bold;font-size: 14px;">陕西-理科</span>&nbsp;条件的搜索结果如下</p>
							<div style="height: 20px;"></div>
							<div class="table-responsive table-hover table-striped">
							
							<table class="table" >
								<tr class="" style="background-color: #337ab7;">
									<td class="text-center " style="background-color: #337ab7;">年份</td>
									<td class="info text-center " style="background-color: #337ab7;">院校代码</td>
									<td class="info text-center " style="background-color: #337ab7;">最高分</td>
									<td class="info text-center " style="background-color: #337ab7;">平均分</td>
									<td class="info text-center " style="background-color: #337ab7;">投档最低分</td>
									<td class="info text-center " style="background-color: #337ab7;">投档分名次</td>
									<td class="info text-center " style="background-color: #337ab7;">录取数</td>
									<td class="info text-center " style="background-color: #337ab7;">招生专业</td>
									
								</tr>
							</table>
							</div>
							<input id="J-chartData" value="year=&amp;HighestScore=&amp;AvgScore=&amp;LowestScore=&amp;Rank=&amp;People=" type="hidden">
<div class="chart">
    
        <div class="g-noResult">很抱歉，没有查询到符合条件的招生信息，请更改条件后重新查询！</div> 
    
    
    </div>
   </div>
    
    <div role="tabpanel" class="tab-pane" id="t2" style="display: none;" >
    	
    	<fieldset role="tabpanel" class="tab-pane" id="profile">
								<legend></legend>

                                        <span>
                                            <input type="hidden" name="collegeId" value="1"> 
                                            <input type="hidden" name="collegeName" value="北京大学">  
                                        </span>
                                        <span>
                                            <select class="g-input g-system-input"  id="dropCollegeProvince" required data-validator="请选择招生地区">
                                                <option value="" selected="">请选择省份</option><optgroup label="A"><option value="安徽">安徽</option></optgroup><optgroup label="B"><option value="北京">北京</option></optgroup><optgroup label="C"><option value="重庆">重庆</option></optgroup><optgroup label="F"><option value="福建">福建</option></optgroup><optgroup label="G"><option value="广东">广东</option><option value="广西">广西</option><option value="贵州">贵州</option><option value="甘肃">甘肃</option></optgroup><optgroup label="H"><option value="河北">河北</option><option value="黑龙江">黑龙江</option><option value="河南">河南</option><option value="湖北">湖北</option><option value="湖南">湖南</option><option value="海南">海南</option></optgroup><optgroup label="J"><option value="吉林">吉林</option><option value="江苏">江苏</option><option value="江西">江西</option></optgroup><optgroup label="L"><option value="辽宁">辽宁</option></optgroup><optgroup label="N"><option value="内蒙古">内蒙古</option><option value="宁夏">宁夏</option></optgroup><optgroup label="Q"><option value="青海">青海</option></optgroup><optgroup label="S"><option value="山西">山西</option><option value="山东">山东</option><option value="四川">四川</option><option value="陕西">陕西</option></optgroup><optgroup label="T"><option value="天津">天津</option></optgroup><optgroup label="X"><option value="新疆">新疆</option></optgroup><optgroup label="Y"><option value="云南">云南</option></optgroup><optgroup label="Z"><option value="浙江">浙江</option></optgroup>
                                            </select>
                                        </span>
                                        <input type="hidden" id="dropCollegeProvince_provinceName" name="provinceName">
                                        <span>
                                            <select class="g-input g-system-input" id="dropCollegeLiberalScience" name="liberalScience"  required data-validator="请选择考生科类">
                                                <option selected value="">考生科类</option>
                                                <option value="1">理科</option>
                                                <option value="0">文科</option>
                                            </select>
                                        </span>
                                       
                                        <span>
                                            <select class="g-input g-system-input" id="dropMajorYear" name="year" required="" data-validator="请选择年份">
                                                <option value="">招生年份</option><option value="2016" selected="selected">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option>
                                            </select>
                                        </span>
                                        <span>
                                            <select class="g-input g-system-input" id="dropCollegePhase" name="phase" required data-validator="请选择录取批次">
                                            	 <option selected value="">请选择批次</option>
                                                <option value="1">本科一批</option>
                                                <option value="2">本科二批</option>
                                                 <option value="3">本科三批</option>
                                                 <option value="3">高职专科批</option>
                                            </select>
                                        </span> 
                                        <input  type="hidden"  id="J-modal_code-input" name="code"  value = "">
                                        <span class="action"><button class="g-button g-button-blue-linear" data-userauthority="1" type="button">查询</button></sapn>
                                    <legend></legend>
							</fieldset>
							<div style="height: 10px;"></div>
    	
    	
    </div>
    <div role="tabpanel" class="tab-pane" id="t3" style="display: none;" >
    	<fieldset role="tabpanel" class="tab-pane" id="profile">
								<legend></legend>

                                        <span>
                                            <input type="hidden" name="collegeId" value="1"> 
                                            <input type="hidden" name="collegeName" value="北京大学">  
                                        </span>
                                        <span>
                                            <select class="g-input g-system-input"  id="dropCollegeProvince" required data-validator="请选择招生地区">
                                                <option value="" selected="">请选择省份</option><optgroup label="A"><option value="安徽">安徽</option></optgroup><optgroup label="B"><option value="北京">北京</option></optgroup><optgroup label="C"><option value="重庆">重庆</option></optgroup><optgroup label="F"><option value="福建">福建</option></optgroup><optgroup label="G"><option value="广东">广东</option><option value="广西">广西</option><option value="贵州">贵州</option><option value="甘肃">甘肃</option></optgroup><optgroup label="H"><option value="河北">河北</option><option value="黑龙江">黑龙江</option><option value="河南">河南</option><option value="湖北">湖北</option><option value="湖南">湖南</option><option value="海南">海南</option></optgroup><optgroup label="J"><option value="吉林">吉林</option><option value="江苏">江苏</option><option value="江西">江西</option></optgroup><optgroup label="L"><option value="辽宁">辽宁</option></optgroup><optgroup label="N"><option value="内蒙古">内蒙古</option><option value="宁夏">宁夏</option></optgroup><optgroup label="Q"><option value="青海">青海</option></optgroup><optgroup label="S"><option value="山西">山西</option><option value="山东">山东</option><option value="四川">四川</option><option value="陕西">陕西</option></optgroup><optgroup label="T"><option value="天津">天津</option></optgroup><optgroup label="X"><option value="新疆">新疆</option></optgroup><optgroup label="Y"><option value="云南">云南</option></optgroup><optgroup label="Z"><option value="浙江">浙江</option></optgroup>
                                            </select>
                                        </span>
                                        <input type="hidden" id="dropCollegeProvince_provinceName" name="provinceName">
                                        <span>
                                            <select class="g-input g-system-input" id="dropCollegeLiberalScience" name="liberalScience"  required data-validator="请选择考生科类">
                                                <option selected value="">考生科类</option>
                                                <option value="1">理科</option>
                                                <option value="0">文科</option>
                                            </select>
                                        </span>
                                       
                                        <span>
                                            <select class="g-input g-system-input" id="dropMajorYear" name="year" required="" data-validator="请选择年份">
                                                <option value="">招生年份</option><option value="2016" selected="selected">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option>
                                            </select>
                                        </span>
                                        
                                        </span> 
                                        <input  type="hidden"  id="J-modal_code-input" name="code"  value = "">
                                        <span class="action"><button class="g-button g-button-blue-linear" data-userauthority="1" type="button">查询</button></sapn>
                                    <legend></legend>
							</fieldset>
    	
    	
    </div>
    
  </div>

</div>
 

</div>
                                
				
                  
                   
						
				</div>
				 
				 </div>
				 </div>	
				</div><!--panel-body结束-->
			</div>
				
			
	</body>
</html>
