<%--
  Created by IntelliJ IDEA.
  User: wuyong
  Date: 2016/12/29
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加信息</title>
</head>
<body>
<form action="/AddServlet" method="post">
    <table>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>班级：</td>
            <td><input type="text" name="banji"></td>
        </tr>
        <tr>
            <td>课程：</td>
            <td><input type="text" name="course"></td>
        </tr>
        <tr>
            <td>分数：</td>
            <td><input type="text" name="score"></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
            <td><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
