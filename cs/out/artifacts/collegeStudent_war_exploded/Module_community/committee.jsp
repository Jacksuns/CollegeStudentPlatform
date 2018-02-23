<%@ page import="bean.News" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/16
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script language="Javascript"></script>
    <meta charset="utf-8">
    <title>团委社团</title>
    <link rel="stylesheet" href="../css/two.css" type="text/css"/>
</head>
<body>
<div id="rightDiv" >
        <h3>团委消息</h3>
        <hr />
        <div class="result">
        <%--<%--%>
            <%--List<News> list= (List<News>) request.getAttribute("list");--%>
            <%--for(News n:list){--%>
        <%--%>--%>
        <%--<li><span><a href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>--%>
        <%--<%--%>
            <%--}--%>
        <%--%>--%>

            <ul>
                <li>
                    <a href="">软件学院开展“弘扬雷锋精神 展示青春色彩”活动</a>
                </li>
                <li>
                    <a href="">东北大学志愿者协会携手沈阳志愿者开展“走进社区 创建幸福沈阳”活动</a>
                </li>

            </ul>
        </div>
</div>
</body>
</html>
