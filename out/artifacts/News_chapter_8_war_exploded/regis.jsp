<%@ page import="javafx.scene.control.Alert" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>用户注册</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>
<body>
<form action="<%= path %>/registerService" method="post">
    <table border="0" cellpadding="0" cellspacing="0" align="center" width="530">
        <tr>
            <td height="108" colspan="2"><img src="images/top.jpg"></td>
        </tr>
        <tr>
            <td width="107" height="36">用户名：</td>
            <td width="524"><input name="userName" placeholder="用户名" type="text" maxlength="16" id="userName" onblur="aj()"><span id="name">输入字母加数字，4-16个字符</span><span id="uname"></span></td>
        </tr>
        <tr>
            <td width="107" height="36">密码：</td>
            <td width="524"><input name="passWord" type="password" placeholder="密码" id="pwd1" onblur="pwdlength()"><span id="pwd"></span></td>
        </tr>
        <tr>
            <td width="107" height="36">确认密码：</td>
            <td width="524"><input name="passWord" type="password" placeholder="请重新输入密码" id="pwd2" onblur="validate()"><span id="tishi"></span></td>
        </tr>
        <tr>
            <td width="107" height="36">性别：</td>
            <td width="524">
                <input name="sex" type="radio"   value="男" checked>男&nbsp;
                <input name="sex" type="radio" value="女" class="input">女
            </td>
        </tr>
        <tr>
            <td width="117" height="36" >电子邮件地址：</td>
            <td width="524"><input name="email" type="email" placeholder="Email">
                输入正确的Email地址</td>
        </tr>
        <tr>
            <td width="107" height="36">出生日期：</td>
            <td width="524">
                <input name="date" type="date">
            </td>
        </tr>
        <tr><td colspan="2" align="center">
            <input type="submit" value="同意以下协议条款并提交">
        </td></tr>
        <tr><td colspan="2">
  <textarea cols="" rows="" readonly="readonly" style="width:480px;height:110px;font-size:12px;color:#666">
一、总则

1．1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击"同意"按钮即表示用户与百度公司达成协议，完全接受本协议项下的全部条款。
1．2　用户注册成功后，百度将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。
1．3　用户可以使用百度各个频道单项服务，当用户使用百度各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及百度在该单项服务中发出的各类公告的同意。
1．4　百度会员服务协议以及各个频道单项服务条款和公告可由百度公司随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。
　　您在使用百度提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议及/或随时对其的修改，您可以主动取消百度提供的服务；您一旦使用百度服务，即视为您已了解并完全同意本服务协议各项内容，包括百度对服务协议随时所做的任何修改，并成为百度用户。
		</textarea>
        </td>
        </tr>
    </table>
</form>
</body>
<script src="/js/jquery-1.11.3.min.js"></script>
<script>
    function aj(){
        var uid = $("#userName").val();
        $.ajax({
            async : true,    //表示请求是否异步处理
            type : "post",    //请求类型
            url : "/checkService",//请求的 URL地址
            dataType : "json",//返回的数据类型
            data:{"userName":uid},
            success:function (result) {
                console.log("result.msg:"+result.msg)
                if (result.msg==1){
                } else {
                    $("#name").html("<font color='red'>用户名已存在 </font>");
                }
                var regex = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$";
                if(uid.match(regex)==null){
                    $("#uname").html("<font color='red'>用户名不符合规范</font>");
                }else {
                    $("#uname").html("<font color='green'>用户名符合规范</font>");
                }
            },
            error:function (error) {
                alert("错误")
            }
        });
    };
    function pwdlength() {
        var pwd1 = $("#pwd1").val();
        var pwd2 = $("#pwd2").val();
        if(pwd1.length<6||pwd1.length>12){
            $("#pwd").html("<font color='green'>密码长度小于6或大于12</font>");
        }else {
            $("#pwd").html("<font color='green'>密码长度符合规范</font>");
        }
    }
    function validate() {
        var pwd1 = $("#pwd1").val();
        var pwd2 = $("#pwd2").val();
        <!-- 对比两次输入的密码 -->
        if(pwd1 == pwd2) {
            $("#tishi").html("<font color='green'>两次密码相同</font>");
            $("#submit").disabled = false;
        }
        else {
            $("#tishi").html("<font color='red'>两次密码不相同</font>");
            $("#submit").disabled = true;
        }
    }
</script>
</html>

