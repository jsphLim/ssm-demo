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
    <title>详情页面</title>

    <SCRIPT LANGUAGE=javascript>
        function p_del() {
            var msg = "您真的确定要更改吗？\n\n请确认！";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </SCRIPT>
</head>
<body>
<table>
    <form action="/user/update.do?id=${user.id}" method="post" enctype="multipart/form-data">
        <%--编号：<span style="color:red;">${user.id}</span><br>--%>
        姓名:&nbsp;&nbsp;<input name="userName" maxlength="10" placeholder="userName">${user.userName}<br>
        手机号:&nbsp;<input name="userPhone" maxlength="11" placeholder="userPhone">${user.userPhone}<br>
        邮箱:&nbsp;&nbsp;<input name="userEmail" maxlength="17" placeholder="userEmail">${user.userEmail}<br>
        <%--<img src="<%=basePath%>${user.imageUrl}" style="width: 80px" style="height:60px" alt=""/>--%>
        <%--照片:&nbsp;&nbsp;<input type="file" name="file"/><br>--%>
        <h>$-----------------------------------------------------------------------------$</h>
        <br>
        <input type="submit" value="修改" onclick="javascript:return p_del()" style="cursor:hand">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=”button” name=”Submit” style="background: violet;width:35px;cursor:hand" onclick="javascript:history.back(-1);" value="返回">
</table>
</form>
</body>
</html>
