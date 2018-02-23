<%@ page import="bean.News" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/16
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script language="Javascript"></script>
    <meta charset="utf-8">
    <title>体育健身</title>
    <link rel="stylesheet" href="../css/two.css" type="text/css"/>
</head>
<body>
<div id="rightDiv" >
	
        <h3>健身好文</h3>
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
                    <a href="">健身改变人生，一个出身贫寒的清洁工逆袭成女神的故事</a>
                </li>

                <li>
                    <a href="">关于跑步的励志格言，送给每天晨跑的你！</a>
                </li>
                <li>
                    <a href="">坚持运动的励志语录，励志的健身语录和视频</a>
                </li>

            </ul>

        </div>

</div>
</body>
</html>
