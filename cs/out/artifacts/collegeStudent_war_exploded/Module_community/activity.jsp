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
    
        <h3>社团活动</h3>
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
                    <a href="">武协要举办室外素质拓展啦</a>
                </li>
                <li>
                    <a href="">志协-光明小学支教活动招人</a>
                </li>

            </ul>
        </div>
    
</div>
</body>
</html>
