<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑主题--管理后台</title>
<!-- 引入样式文件 -->
<link href="<%=basePath%>/css/admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/css/index.css" rel="stylesheet" type="text/css" />
<!-- 引入js -->
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/layui/layui.all.js"></script>

</head>
<body>
	<div id="main">
		<!-- 引入页首 -->
		<div>
			<%@ include file="console_element/top.jsp"%>
		</div>
		<!-- 插入左边栏 -->
		<div id="opt_list">
			<iframe src="admin/console_element/left.html" scrolling="no"
				frameborder="0" width="160px" height="300px"></iframe>
		</div>
		<!-- 插入中间部分 -->
		<div id="opt_area">
			<ul class="classlist">
				<c:forEach items="${requestScope.themeList}" var="theme">
					<li>${theme.themeName} &nbsp;<a
						href='./admin/themeModify.jsp?tid=${theme.themeID}&tname=${theme.themeName}'>修改</a>
						&nbsp; <a href=javascript:void(0); onclick="getNewsCountBythemeId('${theme.themeID}')">删除</a>

						<%--href='<%= basePath %>deleteThemeServlet?tid=${theme.themeID}'>删除</a>--%>
						<%--修改a标签调用方法逻辑，先去异步查询是否具有相关新闻，判断是否确认删除--%>

						<%--a href="javascript:void(0);" onclick="js_method()"--%>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div id="footer">
			<%@ include file="console_element/bottom.html"%>
		</div>
	</div>
</body>
<script type="text/javascript">
    function getNewsCountBythemeId(themeID){
        //alert(themeID);
        var themeID=themeID;
        $.ajax({
            type : "post",    //请求类型
            url : "/getNewsCount",//请求的 URL地址
            dataType : "json",//返回的数据类型
            data:{"themeID":themeID},
            success:function (result) {
                var count=result.msg;
                //alert("该主题下有"+count+"条新闻！");
                // 没有相关新闻，直接删除
                if(count==0){
                    $.ajax({
                        async : true,
                        type: "post",
                        url: "/deleteThemeServlet",
                        data: {
                            "tid": themeID
                        }});
                    window.location.reload();
                }else {// count>0 具有相关新闻
                    console.log("result.msg:"+result.msg);
                    layer.confirm('该主题具有相关联的新闻！你确定删除吗？', {
                        btn: ['确定','取消'] //按钮
                    }, function(ind){
                        layer.close(ind);
                        // 确认删除
                        $.ajax({
                            async : true,
                            type: "post",
                            url: "/deleteThemeServlet",
                            data: {
                                "tid": themeID
                            }});
                        window.location.reload();
                    }, function(inds){
                        layer.close(inds);
                    });
                }
            },
            error:function (error) {
                alert("请求错误");
            }
        });
    }
</script>
</html>