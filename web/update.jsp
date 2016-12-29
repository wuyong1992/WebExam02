<%--
  Created by IntelliJ IDEA.
  User: wuyong
  Date: 2016/12/29
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新信息</title>
</head>
<body>
<form action="/UpdateServlet" method="post">
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

<%
    String[] chname = request.getParameterValues("check"); //获取checked的checkbox对应的value
    Integer name=Integer.parseInt(chname[0]);//赋值给name
    session.setAttribute("name", name);//添加到会话中，以便servlet获取
%>
</body>
</html>
