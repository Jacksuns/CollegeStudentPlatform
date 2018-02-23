<%@ page import="bean.User" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/16
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>HomePage</title>
    <link rel="stylesheet" href="../css/nav_new.css" type="text/css"/>
    <link rel="stylesheet" href="../css/two.css" type="text/css"/>
    <script language="JavaScript">
        function signCheck() {
            if (form1.id.value == "") {
                alert("请输入用户名");
                form1.id.focus();
                return;
            } else if (form1.pwd.value == "") {
                alert("请输入密码");
                form1.pwd.focus();
                return;
            } else {
                form1.action = "../userServlet?action=login&url=Module_community/head.jsp";
                form1.submit();
            }
        }
        function logout(){
            javascipt:location.href='../userServlet?action=logout&url=Module_community/head.jsp';
        }
    </script>
</head>
<body>

<div id="header" >
    <ul>
        <li><span><a href="首页.html" >加入收藏</a></span></li>
        <li><span><a href="首页.html" >设为首页</a></span></li>

    </ul></div>
<div id="nav">
    <ul>
        <a target="_top" href="../index.jsp"><li>首页</li></a>
        <a target="_top" href="../Module_practice/findTeacher.jsp"><li>勤工助学</li></a>
        <a target="_top" href="../Module_fit/fit.jsp"><li>体育健身</li></a>
        <a target="_top" href="community.jsp"><li>团委社团</li></a>
        <a target="_top" href="../Module_learn/xssh.jsp"><li>学术生活</li></a>
        <a target="_top" href="../Module_competition/competition.jsp"><li>科研竞赛</li></a>
        <a target="_top" href="../Module_resource/resource.jsp"><li>资源发布</li></a>
        <a target="_top" href="../Module_outdoor/outdoor.jsp"><li>户外交友</li></a>
    </ul>

</div>
<!--悬挂图片-->
<div id="picture"></div>


<!--登录窗口-->
<div id ="signIn">
    <%
        User u = (User) request.getSession().getAttribute("user");
        String error = (String) request.getAttribute("error");
        String id = (String) request.getAttribute("id");
        if (u == null && error == null) {
    %>
    <form name="form1" action="" method="post">
        用户名：
        <input type="text" class="input" name="id">
        密码：
        <input type="password" class="input" name="pwd">
        <input type="button" class="button" value="登录" onclick="signCheck()"/>
        <input type="button" class="button" value="注册" onclick="javascipt:location.href='../register/register.jsp'"/>
        <span class="person"> 访问人数:<%=application.getAttribute("count")%></span>
    </form>

    <%
    } else if (error != null && error.equals("pwd")) {
    %>
    <script language="javascript">alert("密码错误");</script>
    <form name="form1" action="" method="post">
        用户名：
        <input type="text" class="input" name="id" value="<%=id%>">
        密码：
        <input type="password" class="input" name="pwd">

        <input type="button" class="button" value="登录" onclick="signCheck()"/>
        <input type="button" class="button" value="注册" onclick="javascipt:location.href='../register/register.jsp'"/>
        <span class="person"> 访问人数:<%=application.getAttribute("count")%></span>
    </form>

    <%
    } else {
    %>
    <span class="welcome">你好，<%=u.getName()%></span>
    <span class="person"> 访问人数:<%=application.getAttribute("count")%></span>
    <button onclick="logout()" name="logout">注销</button>
    <%
        }
    %>
</div>
</body>
</html>
