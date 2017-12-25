<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="ChartDirector.*"
		import="com.bdx.pojo.Userinfo"
		import="com.bdx.service.UserService"
		import="java.sql.SQLException"
		import="com.bdx.servlet.core.ServletBase"
		 
		 %>


<%//第一套题
	// The data for the bar chart
	  //double tem1[]=(double[])session.getAttribute("grade1");
	
	//double[] data10 =(double[])session.getAttribute("data10");
	//double[] data11 =(double[])session.getAttribute("data11");
	 //try {
	//		UserService us=(UserService)this.getService("userService");
			Userinfo user=(Userinfo) session.getAttribute("loged");
			String []str=user.getGrade_one().split(",");
			
			double[] data10={0,0,0,0};
			double[] data11={0,0,0,0};
			int j=0;
			for(int i=0;i<8;i=i+2)
			{
			data10[j]=Double.parseDouble(str[i]);
			data11[j]=Double.parseDouble(str[i+1]);
			//System.out.println(data10[j]+"........."+data11[j]);
			j++;
			}
			
	//	} catch (SQLException e) {
	//		System.out.println("获取失败。。。。。。");
	//		e.printStackTrace();
	//	} 
	
	
	//	for(int i=0;i<8;i=i+2)
	//	{
	//		data10 [i]=tem1[i];
	//		data11 [i]=tem1[i+1];
			
	//	}

	String[] labels1 = { "E  I", "S  N", "T  F", "G  P" };

	// Create a XYChart object of size 540 x 375 pixels
	XYChart c1 = new XYChart(540, 375);

	// Add a title to the chart using 18pt Times Bold Italic font
	c1.addTitle("analysis", "Times New Roman Bold Italic", 18);

	// Set the plotarea at (50, 55) and of 440 x 280 pixels in size. Use a vertical gradient color from
	// light blue (f9f9ff) to blue (6666ff) as background. Set border and grid lines to white (ffffff).
	c1.setPlotArea(50, 55, 440, 280, c1.linearGradientColor(0, 55, 0, 335, 0xf9f9ff, 0x6666ff), -1, 0xffffff,
			0xffffff);

	// Add a legend box at (50, 28) using horizontal layout. Use 10pt Arial Bold as font, with
	// transparent background.
	c1.addLegend(50, 28, false, "Arial Bold", 10).setBackground(Chart.Transparent);

	// Set the x axis labels
	c1.xAxis().setLabels(labels1);

	// Draw the ticks between label positions (instead of at label positions)
	c1.xAxis().setTickOffset(0.5);

	// Set axis label style to 8pt Arial Bold
	c1.xAxis().setLabelStyle("Arial Bold", 8);
	c1.yAxis().setLabelStyle("Arial Bold", 8);

	// Set axis line width to 2 pixels
	c1.xAxis().setWidth(2);
	c1.yAxis().setWidth(2);

	// Add axis title
	c1.yAxis().setTitle("presonnal character");

	// Add a multi-bar layer with 3 data sets
	BarLayer layer = c1.addBarLayer2(Chart.Side);
	layer.addDataSet(data10, 0xff0000, "");
	layer.addDataSet(data11, 0x00ff00, "");

	// Set bar border to transparent. Use glass lighting effect with light direction from left.
	layer.setBorderColor(Chart.Transparent, Chart.glassEffect(Chart.NormalGlare, Chart.Left));

	// Configure the bars within a group to touch each others (no gap)
	layer.setBarGap(0.2, Chart.TouchBar);

	// Output the chart
	String chart1URL1 = c1.makeSession(request, "chart1");

	// Include tool tip for the chart
	String imageMap1 = c1.getHTMLImageMap("", "", "title='{dataSetName} on {xLabel}: {value}'");
%>

<%
// The data for the bar chart
	//double[] data20 =(double[])session.getAttribute("data20");
	//double[] data21 =(double[])session.getAttribute("data21");
					
			String []str2=user.getGrade_two().split(",");
			
			double[] data20={0,0,0,0};
			double[] data21={0,0,0,0};
			int m=0;
			for(int i=0;i<8;i=i+2)
			{
			data20[m]=Double.parseDouble(str2[i]);
			data21[m]=Double.parseDouble(str2[i+1]);
			System.out.println(data20[m]+"........."+data21[m]);
			m++;
			}

String[] labels2 = {"a     b", "c     d", "e    f", "g    h"};

// Create a XYChart object of size 540 x 375 pixels
XYChart c2 = new XYChart(540, 375);

// Add a title to the chart using 18pt Times Bold Italic font
c2.addTitle("Average Weekly Network Load", "Times New Roman Bold Italic", 18);

// Set the plotarea at (50, 55) and of 440 x 280 pixels in size. Use a vertical gradient color from
// grey (888888) to black (000000) as background. Set border and grid lines to white (ffffff).
c2.setPlotArea(50, 55, 440, 280, c2.linearGradientColor(0, 55, 0, 335, 0x888888, 0x000000), -1,
    0xffffff, 0xffffff);

// Add a legend box at (50, 25) using horizontal layout. Use 10pt Arial Bold as font, with
// transparent background.
c2.addLegend(50, 25, false, "Arial Bold", 10).setBackground(Chart.Transparent);

// Set the x axis labels
c2.xAxis().setLabels(labels2);

// Draw the ticks between label positions (instead of at label positions)
c2.xAxis().setTickOffset(0.5);

// Set axis label style to 8pt Arial Bold
c2.xAxis().setLabelStyle("Arial Bold", 8);
c2.yAxis().setLabelStyle("Arial Bold", 8);

// Set axis line width to 2 pixels
c2.xAxis().setWidth(2);
c2.yAxis().setWidth(2);

// Add axis title
c2.yAxis().setTitle("Throughput (MBytes Per Hour)");

// Add a multi-bar layer with 3 data sets and 4 pixels 3D depth
BarLayer layer2 = c2.addBarLayer2(Chart.Side, 4);
layer2.addDataSet(data20, 0x66aaee, "");
layer2.addDataSet(data21, 0xeebb22, "");


// Set bar border to transparent. Use bar gradient lighting with light intensity from 0.75 to 1.75.
layer2.setBorderColor(Chart.Transparent, Chart.barLighting(0.75, 1.75));

// Configure the bars within a group to touch each others (no gap)
layer2.setBarGap(0.2, Chart.TouchBar);

// Output the chart
String chart1URL2 = c2.makeSession(request, "chart2");

// Include tool tip for the chart
String imageMap2 = c2.getHTMLImageMap("", "",
    "title='{dataSetName} on {xLabel}: {value}'");
%>

<%//第三套试题的图表
	// The data for the chart
	String[] str3=user.getGrade_three().split(",");
	double[] data3={0,0,0,0,0,0};
	for(int i=0;i<6;i++)
	{
		data3[i]=Double.parseDouble(str3[i]);
	}
	// The labels for the chart
	String[] labels3 = {"Realistic" ,"Investigative", "Artistic", "Social", "Enterprising", "Conventional" };

	// Create a PolarChart object of size 450 x 350 pixels
	PolarChart c3 = new PolarChart(450, 350);

	// Set center of plot area at (225, 185) with radius 150 pixels
	c3.setPlotArea(225, 185, 150);

	// Add an area layer to the polar chart
	c3.addAreaLayer(data3, 0x9999ff);

	// Set the labels to the angular axis as spokes
	c3.angularAxis().setLabels(labels3);

	// Output the chart
	String chart1URL3 = c3.makeSession(request, "chart3");

	// Include tool tip for the chart
	String imageMap3 = c3.getHTMLImageMap("", "", "title='{label}: score = {value}'");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%@include file="header.jsp"%>
<style type="text/css">
body {
	font-family: "微软雅黑"
}

.sub {
	font-family: "微软雅黑";
	font-weight: bold;
	font-size: 16px;
}

* {
	margin: 0 auto;
	padding: 0
}
</style>
<title>北斗星报考网</title>
</head>
<body>
	<!--
        	作者：langyamoren@163.com
        	时间：2016-04-09
        	描述：最上面的部分
       -->

	<%@include file="top.jsp"%>
	<!--中间区域-->

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-3">
				<!--   侧边功能栏-->
				<%@include file="left.jsp"%>
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


				<!-- 第一套题的图表 -->
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">个人风格测试结果</h3>
					</div>
					<div class="panel-body">

						<hr color="#000080">
						<div
							style="width: 500px; height: 380px; background: blue; overflow-y: hidden;">
							<center>
								<img src='<%=response.encodeURL("../getchart.jsp?" + chart1URL1)%>'
									usemap="#map1" border="0" style="width: 500px; height: 400px;">
							</center>
						</div>

						<div class="panel-footer" style="background-color: white">
							
							<%
							String eva1=(String)session.getAttribute("evaluated1");
							%>
							<div>
							<%
							%>
							
							<%=eva1 %>
							</div>
							
							
						</div>

					</div>
				</div>
				<!-- 第二套题的图表 -->
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">个人性格测试结果</h3>
					</div>
					
					<div class="panel-body">

						<hr color="#000080">
						<div
							style="width: 500px; height: 380px; background: blue; overflow-y: hidden;">
							<center>
								<img src='<%=response.encodeURL("../getchart.jsp?" + chart1URL2)%>'
									usemap="#map1" border="0" style="width: 500px; height: 400px;">
									
							</center>
						</div>
						</div>
				</div>

						<div class="panel-footer" style="background-color: white">
							<%
							String eva2=(String)session.getAttribute("evaluated2");
							%>
							<div>
							<%
							%>
							
							<%=eva2 %>
						</div>

					<!-- 第三套题的图表 -->
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">职业倾向结果</h3>
					</div>
						
					<div class="panel-body">
						
						<hr color="#000080">
						<div
							style="font-size: 18pt; font-family: verdana; font-weight: bold">
							<center>
							<img src='<%=response.encodeURL("../getchart.jsp?" + chart1URL3)%>'
								usemap="#map1" border="0" style="width: 500px; height: 400px;">	
						</center>
						</div>
						</div>
					</div>
					
					<div class="panel-footer" style="background-color: white">
							<%
							String eva3=(String)session.getAttribute("evaluated3");
							%>
							<div>
							<%
							%>
							
							<%=eva3 %>
						
						</div>
					</div>
				</div>

					
			</div>

		</div>

	</div>

	<footer class="container">
		<hr />
		<p align="center">
			北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b>
		</p>
	</footer>
</body>
</html>
