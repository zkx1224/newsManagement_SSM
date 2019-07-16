<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
  String path = request.getContextPath();
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>新闻中国</title>
  <link href="css/main.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="css/index.css" />
  <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
  <script src="js/wySilder.min.js" type="text/javascript"></script>
  <script src="js/silder.js"></script>
  <script src="js/login.js"></script>
  <script src="js/layui/layui.all.js"></script>
</head>
<body>
<div id="header">
  <div id="top_login">
    <form id="login" method="post">
      <label>登录名</label>
      <input type="text" name="username" id="username" value="" class="login_input" />
      <label>密&#160;&#160;码</label>
      <input type="password" name="password" id="password" value="" class="login_input" />
      <input type="button" id="loginbtn" class="login_sub" value="登录"  />
    </form>
  </div>
  <div id="register" class="register">
    <input type="button" class="login_sub" value="注册"
           onclick="location.href='regis.jsp'" /> <img
          src="images/friend_logo.gif" alt="Google" id="friend_logo" />
  </div>

  <div id="silder" class="js-silder">
    <div class="silder-scroll">
      <div class="silder-main">
        <div class="silder-main-img">
          <img src="images/d2.png" alt="">
        </div>
        <div class="silder-main-img">
          <img src="images/d1.png" alt="">
        </div>
      </div>
    </div>
  </div>
</div>

<div id="container">
  <%@ include file="index_sidebar.jsp"%>
  <div class="main">
    <div class="class_type">
      <img src="images/class_type.gif" alt="新闻中心" />
    </div>
    <div class="content">
      <ul class="class_date">
        <li id='class_month'><a href='#'><b> 国内 </b></a> <a href='#'><b>
          国际 </b></a> <a href='#'><b> 军事 </b></a> <a href='#'><b> 体育 </b></a> <a
                href='#'><b> 娱乐 </b></a> <a href='#'><b> 社会 </b></a> <a href='#'><b>
          财经 </b></a> <a href='#'><b> 科技 </b></a> <a href='#'><b> 健康 </b></a> <a
                href='#'><b> 汽车 </b></a> <a href='#'><b> 教育 </b></a></li>
        <li id='class_month'><a href='#'><b> 房产 </b></a> <a href='#'><b>
          家居 </b></a> <a href='#'><b> 旅游 </b></a> <a href='#'><b> 文化 </b></a> <a
                href='#'><b> 其他 </b></a></li>
      </ul>
      <ul class="classlist">
        <li><a href='newspages/news_add.html'> 深足教练组：说我们买球是侮辱
          朱广沪常暗中支招 </a><span> 2009-10-28 01:03:51.0 </span></li>
        <li><a href='#'> 省政府500万悬赏建业登顶 球员:遗憾主场放跑国安 </a><span>
							2009-10-28 01:03:19.0 </span></li>
        <li><a href='#'> 洪元硕：北京人的脸就看你们了 最后一哆嗦看着办 </a><span>
							2009-10-28 01:02:56.0 </span></li>
        <li><a href='#'> 临界冠军京城夺票总动员 球迷:夺冠!让所有人闭嘴 </a><span>
							2009-10-28 01:02:17.0 </span></li>
        <li><a href='#'> 一纸传真暗含申花处理态度 国足征调杜威突生悬疑 </a><span>
							2009-10-28 01:01:47.0 </span></li>
        <li class='space'></li>
        <li><a href='#'> 气候变化导致海平面上升 </a><span> 2009-10-28
							01:00:37.0 </span></li>
        <li><a href='#'> 商贸联委会在杭州开会 中美对贸易争端态度低调 </a><span>
							2009-10-28 01:00:11.0 </span></li>
        <li><a href='#'> 迟福林：“十二五”改革应向消费大国转型 </a><span>
							2009-10-28 12:59:45.0 </span></li>
        <li><a href='#'> 伊朗称放弃美元作为外储地位 人民币或上位 </a><span>
							2009-10-28 12:58:42.0 </span></li>
        <li><a href='#'> “持械抢劫，当场击毙” 浙江永康现超雷人标语 </a><span>
							2009-10-28 12:58:20.0 </span></li>
        <li class='space'></li>
        <li><a href='#'> 国内成品油价格上调几成定局 </a><span> 2009-10-28
							12:57:18.0 </span></li>
        <li><a href='#'> 俄数百所幼儿园和学校因流感停课 </a><span> 2009-10-28
							12:56:51.0 </span></li>
        <li><a href='#'> 喀布尔市中心传出爆炸和枪声 目前原因不明 </a><span>
							2009-10-28 12:56:24.0 </span></li>
        <li><a href='#'> 国台办介绍大陆高校加大对台招生力度情况 </a><span>
							2009-10-28 12:55:07.0 </span></li>
        <li><a href='#'> 国台办将授权福建等六省市部分赴台管理审批权 </a><span>
							2009-10-28 12:54:12.0 </span></li>
        <li class='space'></li>
      </ul>
    </div>
    <%@ include file="index_rightbar.jsp"%>
  </div>
</div>
<%@ include file="index_bottom.html"%>

</body>
</html>