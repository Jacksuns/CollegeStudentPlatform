<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>学术生活</title>
    <link rel="stylesheet" href="../css/nav_new.css" type="text/css"/>
    <link rel="stylesheet" href="../css/two.css" type="text/css"/>
    
</head>
<body>
<div id="header" >
    <ul>
        <li><span><a href="首页.html" >加入收藏</a></span></li>
        <li><span><a href="首页.html" >设为首页</a></span></li>

    </ul>
</div>
<div id="nav">
    <ul>
        <a target="_top" href="../index.jsp"><li>首页</li></a>
        <a target="_top" href="../Module_practice/findTeacher.jsp"><li>勤工助学</li></a>
        <a target="_top" href="../Module_fit/fit.jsp"><li>体育健身</li></a>
        <a target="_top" href="../Module_community/community.jsp"><li>团委社团</li></a>
        <a target="_top" href="xssh.jsp"><li>学术生活</li></a>
        <a target="_top" href="../Module_competition/competition.jsp"><li>科研竞赛</li></a>
        <a target="_top" href="../Module_resource/resource.jsp"><li>资源发布</li></a>
        <a target="_top" href="../Module_outdoor/outdoor.jsp"><li>户外交友</li></a>
    </ul>

</div>
<!--悬挂图片-->
<div id="picture"></div>


<!--登录窗口-->
<div id ="signIn" >
   
    <form name="form1" action="" method="post">
        用户名：
        <input type="text" class="input" name="id">
        密码：
        <input type="password" class="input" name="pwd">
        <input type="button" class="button" value="登录" onclick=""/>
        <input type="button" class="button" value="注册" onclick=""/>
        <span class="person"> 访问人数:5004</span>
    </form>
</div>
</body>
</html>
