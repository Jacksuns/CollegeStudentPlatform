<%@ page import="bean.News" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/16
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>户外交友</title>
    <link rel="stylesheet" href="../css/two.css" type="text/css"/>
</head>
<body>
<div id="rightDiv" >

        <h3>户外活动</h3>
        <hr />
        <div class="result">
        <%
            List<News> list= (List<News>) request.getAttribute("list");
            for(News n:list){
        %>
        <li><span><a href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>
        <%
            }
        %>
        </div>

</div>
</body>
</html>
