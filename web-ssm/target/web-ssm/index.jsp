<%--
Created by ly on 2017/11/30.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<h1>SSMDemo by ly</h1>

<form name="form1" action="/user/login.do" method="post">
    <table width="300" border="1" align="center">
        <tr>
            <td colspan="2">登录</td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="userName">
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="userPwd"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="登录"/>
            </td>


        </tr>
    </table>
</form>
</body>
</html>

