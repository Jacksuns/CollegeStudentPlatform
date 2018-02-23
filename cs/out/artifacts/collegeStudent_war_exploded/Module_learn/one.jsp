<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<script language="Javascript">resizeTo(400,300)</script>
    <meta charset = utf-8>
    <title>找家教</title>
    <link rel="stylesheet" href="../css/nav_new.css" type="text/css"/>
    <link rel="stylesheet" href="../css/one.css" type="text/css"/>
</head>
<body>
<div id="container">

    <div id="header" background="school.jpg">
        <ul>
            <li><span><a href="首页.html">加入收藏</a></span></li>
            <li><span><a href="首页.html">设为首页</a></span></li>
        </ul>
    </div>
    <div id="nav">
        <ul>
            <li><span><a target="_top" href="../index.jsp">首页</a></span></li>
            <li><span><a target="_top" href="findTeacher.jsp">勤工助学</a></span></li>
            <li><span><a target="_top" href="../Module_fit/fit.jsp">体育健身</a></span></li>
            <li><span><a target="_top" href="../Module_community/community.jsp">团委社团</a></span></li>
            <li><span><a target="_top" href="首页.html">学术生活</a></span></li>
            <li><span><a target="_top" href="../Module_competition/competition.jsp">科研竞赛</a></span></li>
            <li><span><a target="_top" href="../Module_resource/resource.jsp">资源发布</a></span></li>
            <li><span><a target="_top" href="../Module_outdoor/outdoor.jsp">户外交友</a></span></li>
        </ul>
    </div>
    <!--悬挂图片-->
    <div id="picture"></div>
    <!--登录窗口-->
    <div id="signIn" >
        <form name="form1" action="" method="post">
            用户名：
            <input type="text" class="input" name="id">
            密码：
            <input type="password" class="input" name="pwd">
            <input type="button" class="button" value="登录" onclick="signCheck()"/>
            <input type="button" class="button" value="注册" onclick="javascipt:location.href='register/register.jsp'"/>
            <span class="person"> 访问人数:</span>
        </form>
        <div id="main_body">
            <a class="button1" href="xssh.jsp"></a>
            <a class="button2" href="life.jsp"></a>
        </div>
    </div>
</div>
</body>
</html>
