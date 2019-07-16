<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>编辑新闻--管理后台</title>
	<!-- 引入样式文件 -->
	<link href="css/admin.css" rel="stylesheet" type="text/css" />
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<!-- 引入脚本文件 -->
	<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
</head>
<%
    String login = (String) session.getAttribute("login");
    if (login == null) {
        response.sendRedirect("../index.jsp");
    }
%>
<body>
	<div id="main">
	   <div>
	    <%-- <%@ include file="admin/console_element/top.jsp" %>--%>
	    <iframe src="<%=path %>/admin/console_element/top.jsp" scrolling="no" frameborder="0" width="100%"></iframe>
	  </div> 
	  <div id="opt_list">
	 	<iframe src="<%=path %>/admin/console_element/left.html" scrolling="no" frameborder="0" width="160px" height = "300px"></iframe>
	  </div>
	  <div id="opt_area"> 
	    <ul class="classlist">
	      <li> 深足教练组：说我们买球是侮辱 朱广沪常暗中支招 <span> 作者：
	        sport                                             
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 省政府500万悬赏建业登顶 球员:遗憾主场放跑国安 <span> 作者：
	        sport                                             
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 洪元硕：北京人的脸就看你们了 最后一哆嗦看着办 <span> 作者：
	        sport                                             
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 临界冠军京城夺票总动员 球迷:夺冠!让所有人闭嘴 <span> 作者：
	        sport                                             
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 一纸传真暗含申花处理态度 国足征调杜威突生悬疑 <span> 作者：
	        sport                                             
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li class='space'></li>
	      <li> 气候变化导致海平面上升 <span> 作者：news
	        
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 商贸联委会在杭州开会 中美对贸易争端态度低调 <span> 作者：news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 迟福林：“十二五”改革应向消费大国转型 <span> 作者：
	        news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 伊朗称放弃美元作为外储地位 人民币或上位 <span> 作者：
	        out                                               
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> “持械抢劫，当场击毙” 浙江永康现超雷人标语 <span> 作者：
	        news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li class='space'></li>
	      <li> 国内成品油价格上调几成定局 <span> 作者：
	        news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 俄数百所幼儿园和学校因流感停课 <span> 作者：
	        news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 喀布尔市中心传出爆炸和枪声 目前原因不明 <span> 作者：
	        out                                               
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 国台办介绍大陆高校加大对台招生力度情况 <span> 作者：
	        news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li> 国台办将授权福建等六省市部分赴台管理审批权 <span> 作者：
	        news                                              
	        &#160;&#160;&#160;&#160; <a href='admin/news_modify.jsp'>修改</a> &#160;&#160;&#160;&#160; <a href='#' >删除</a> </span> </li>
	      <li class='space'></li>
	      <p align="right"> 当前页数:[1/3]&nbsp; <a href="#">下一页</a> <a href="#">末页</a> </p>
	    </ul>
	  </div>
	
	  <!-- 引入页脚 -->
	  <%@ include file = "console_element/bottom.html" %>
    </div>
</body>
</html>