<%@ page import="java.util.ArrayList" %>
<%@ page import="com.wy.Bean.StudentInfo" %><%--
  Created by IntelliJ IDEA.
  User: wuyong
  Date: 2016/12/29
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<table>
    <tr>
        <td></td>
        <td><button><a href="add.jsp">添加</a></button></td>
        <td><button><a href="update.jsp">更新</a></button></td>
        <td><button><a href="/DelServlet">删除</a></button></td>
        <td></td>
    </tr>
    <tr>
        <td>选择</td>
        <td>姓名</td>
        <td>班级</td>
        <td>课程</td>
        <td>分数</td>
    </tr>


    <jsp:useBean id="stu" class="com.wy.Bean.StudentInfo"/>
    <%
        ArrayList list = (ArrayList) session.getAttribute("list");
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                stu = (StudentInfo) list.get(i);
    %>
    <tr>
        <td><input type="checkbox" name="check" value="<%=i%>"></td>
        <td><%=stu.getName()%></td>
        <td><%=stu.getBj()%></td>
        <td><%=stu.getKc()%></td>
        <td><%=stu.getScore()%></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
