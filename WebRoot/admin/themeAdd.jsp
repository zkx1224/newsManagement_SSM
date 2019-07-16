<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加主题--管理后台</title>
<!-- 引入样式文件 -->
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />
<!-- 引入JS文件 -->
<script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../js/layui/layui.all.js"></script>
<script>
function check() {
	var themename = document.getElementById("tname");

	if (themename.value == "") {
		layer.msg('主题名称不能为空！', {
			time: 2000
		})
		themename.focus();
		return -1;
	}
	return true;
}

$(document).ready(function(){
	$("#submitButton").click(function(){
		if (check()) {
			var tname = document.getElementById("tname");
			$.ajax({
				url: "../addThemeServlet",
				type:"post",
                async:true,
                data:{
                	"themename":tname
                },
                dataType:"json",
                success:function(res){
                	console.log(res);
                	if(res.result == "success"){
                		layer.msg('添加成功！', {
	                        time: 2000, //2s后自动关闭
	                    });
                		window.location.href='admin/themeAdd.jsp';
                		return;
                	}
                	else if (res.result == "error") {
                		layer.msg('添加失败！', {
	                        time: 2000, //2s后自动关闭
	                    });
					}
                }
			});
		}
	});
});
</script>
</head>
<body>
	<div id="main">
		<!-- 引入页首 -->
		<div>
			<%@ include file="console_element/top.jsp"%>
		</div>
		<div id="opt_list">
			<iframe src="console_element/left.html" scrolling="no"
				frameborder="0" width="160px" height="300px"></iframe>
		</div>
		<div id="opt_area">
			<h1 id="opt_type">添加主题：</h1>
			<form action="<%= path %>/addThemeServlet" method="post">
				<p>
					<label> 主题名称 </label> <input name="themename" type="text"
						class="opt_input" id="tname" />
				</p>
				<input type="submit" value="提交" class="opt_sub" /> <input
					type="reset" value="重置" class="opt_sub" />
			</form>
		</div>
		<div id="footer">
			<%@ include file="console_element/bottom.html"%>
		</div>
	</div>

</body>
</html>