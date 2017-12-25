<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="ChartDirector.*" %>
    
   
<%
/* // The data for the bar chart
  double tem[]=(double[])request.getAttribute("grade");

double[] data0 = {};
double[] data1 = {};
	for(int i=0;i<8;i++)
	{
		data0 [i]=tem[i];
		data1 [i]=tem[i+1];
		i++;
	}
 */
 double e=Double.parseDouble(session.getAttribute("extrovert").toString());
 double s=Double.parseDouble(session.getAttribute("sensing").toString());
 double t=Double.parseDouble(session.getAttribute("thinking").toString());
 double j=Double.parseDouble(session.getAttribute("judging").toString());
 
 double it=Double.parseDouble(session.getAttribute("introvert").toString());
 double in=Double.parseDouble(session.getAttribute("intuition").toString());
 double f=Double.parseDouble(session.getAttribute("feeling").toString());
 double p=Double.parseDouble(session.getAttribute("perceiving").toString());

 double[] data0 = {e, s, t, j};
 double[] data1 = {it, in, f, p};



String[] labels = {"E  I", "S  N", "T  F", "G  P"};

// Create a XYChart object of size 540 x 375 pixels
XYChart c = new XYChart(540, 375);

// Add a title to the chart using 18pt Times Bold Italic font
c.addTitle("analysis", "Times New Roman Bold Italic", 18);

// Set the plotarea at (50, 55) and of 440 x 280 pixels in size. Use a vertical gradient color from
// light blue (f9f9ff) to blue (6666ff) as background. Set border and grid lines to white (ffffff).
c.setPlotArea(50, 55, 440, 280, c.linearGradientColor(0, 55, 0, 335, 0xf9f9ff, 0x6666ff), -1,
    0xffffff, 0xffffff);

// Add a legend box at (50, 28) using horizontal layout. Use 10pt Arial Bold as font, with
// transparent background.
c.addLegend(50, 28, false, "Arial Bold", 10).setBackground(Chart.Transparent);

// Set the x axis labels
c.xAxis().setLabels(labels);

// Draw the ticks between label positions (instead of at label positions)
c.xAxis().setTickOffset(0.5);

// Set axis label style to 8pt Arial Bold
c.xAxis().setLabelStyle("Arial Bold", 8);
c.yAxis().setLabelStyle("Arial Bold", 8);

// Set axis line width to 2 pixels
c.xAxis().setWidth(2);
c.yAxis().setWidth(2);

// Add axis title
c.yAxis().setTitle("presonnal character");

// Add a multi-bar layer with 3 data sets
BarLayer layer = c.addBarLayer2(Chart.Side);
layer.addDataSet(data0, 0xff0000, "");
layer.addDataSet(data1, 0x00ff00, "");


// Set bar border to transparent. Use glass lighting effect with light direction from left.
layer.setBorderColor(Chart.Transparent, Chart.glassEffect(Chart.NormalGlare, Chart.Left));

// Configure the bars within a group to touch each others (no gap)
layer.setBarGap(0.2, Chart.TouchBar);

// Output the chart
String chart1URL = c.makeSession(request, "chart1");

// Include tool tip for the chart
String imageMap1 = c.getHTMLImageMap("", "",
    "title='{dataSetName} on {xLabel}: {value} MBytes/hour'");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@include file="header.jsp" %>
	<style type="text/css">
		    body{font-family: "微软雅黑" }
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	       *{margin:0 auto;padding:0}
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
							  <li><a href="#">生涯规划</a></li>
							  <li class="active">自我评估</li>
							</ol>
					</div>
				 	  

                       <!-- 增加模型的Panel -->
		                      <div class="panel panel-info">
							  <div class="panel-heading">
							    <h3 class="panel-title">个人风格测试结果</h3>
							  </div>
							  <div class="panel-body">
							
							<hr color="#000080">
							<div style="width:500px ;height:380px; background: blue ;overflow-y:hidden;">
							<center>
							<img src='<%=response.encodeURL("getchart.jsp?"+chart1URL)%>'
							    usemap="#map1" border="0" style="width:500px;height:400px ;">
							    </center>
							    </div>
							    
							<div class="panel-footer" style="background-color: white">
							1、最可靠的人<br>
							2、会不屈不挠的完成任务<br>
							3、会爱护家庭和学校<br>
							4、可能与不负责任者结婚<br>
							5、衣着不会有很多变化<br>
							6、爱惜公司的资源<br>
							7、喜欢做会计工作<br>
							8、不喜欢被批评<br>
							9、责任感很重<br>
							</div>
							
							  </div>
							  </div>
					 
				 	
                     
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
    