<%--
  Created by ly on 2017/11/30.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>添加用户</title>


    <script type="text/javascript">
        function check(form) {

            if (form.userName.value == '') {
                alert("请输入姓名!");
                form.userName.focus();
                return false;
            }
            if (form.userPhone.value == '') {
                alert("请输入手机号!");
                form.userPhone.focus();
                return false;
            }
            return true;
        }
    </script>



</head>

<body>
<h1>添加用户</h1>
<form action="/user/save.do" method="post">
    <table>
        姓名:&nbsp;&nbsp;&nbsp;&nbsp;<input name="userName" maxlength="10"  value="" placeholder="姓名"><br>
        密码:&nbsp;&nbsp;&nbsp;&nbsp;<input name="pass1" maxlength="10"  value="" placeholder="密码"><br>
        手机号:&nbsp;<input name="userPhone" maxlength="11"  value="" placeholder="手机号"><br>
        邮箱:&nbsp;&nbsp;&nbsp;&nbsp;<input name="userEmail" maxlength="17"  value="" id="Mail" placeholder="邮箱"><br>
        <h>$-----------------------------------------------------------------------------$</h>
        <br>
        <input type="submit" value="保存"  onclick="return check(this.form)" style="cursor:hand">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=”button” name=”Submit” style="background: violet;width:35px;cursor:hand" onclick="javascript:history.back(-1);" value="返回">
    </table>
</form>
</body>
</html>  