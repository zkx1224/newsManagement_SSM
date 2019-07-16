<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改主题--管理后台</title>
<!-- 引入样式文件 -->
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />
<!-- JS文件 -->
<script type="text/javascript">
	function check(){
		var tname = document.getElementById("tname");

		if(tname.value == ""){
			alert("请输入主题名称！！");
			tname.focus();
			return false;
		}		
		return true;
	}
</script>
</head>
<body>
	<div id="main">
		<!-- 引入页首 -->
		<div>
			<%@ include file="console_element/top.jsp"%>
		</div>
		<!-- 插入左边栏 -->
		<div id="opt_list">
			<iframe src="console_element/left.html" scrolling="no"
				frameborder="0" width="160px" height="300px"></iframe>
		</div>
		<!-- 插入中间部分 -->
		<div id="opt_area">
			<h1 id="opt_type">修改主题：</h1>
			<form action="<%= basePath %>updateThemeServlet" method="post"
				onsubmit="return check()">
				<p>
					<label> 主题名称 </label> <input name="themeName" type="text"
						class="opt_input" value="${param.tname}" /> <input name="themeID"
						type="hidden" value="${param.tid}" />
				</p>
				<input type="submit" value="提交" class="opt_sub" /> <input type="reset"
					value="重置" class="opt_sub" />
			</form>
		</div>
		<div id="footer">
			<%@ include file="console_element/bottom.html"%>
		</div>
	</div>
</body>
</html>