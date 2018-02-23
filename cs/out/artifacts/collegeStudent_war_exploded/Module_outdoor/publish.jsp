<%@ page import="bean.News" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/16
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>HomePage</title>
    <link rel="stylesheet" href="../css/two.css" type="text/css"/>
</head>
<body>
<div id="rightDiv" >
    <h3>组团</h3>
    <hr />
    <div class="comments-area">
        <form>
            <p>
                <label>目的地：</label>
                <input type="text" value="">
            </p>
            <p>
                <label>详情：</label>
                <textarea></textarea>
            </p>
            <div class="sub-in">
                <input type="submit" value="发表申请">
            </div>
        </form>
    </div>
</div>
</body>
</html>
