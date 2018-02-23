<%@ page import="bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.News" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/15
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大学生社会实践平台</title>
    <link rel="stylesheet" href="css/nav_new.css" type="text/css"/>
    <link rel="stylesheet" href="css/homepage.css" type="text/css"/>
    <script language="javascript">
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
                form1.action = "../userServlet?action=login&url=index.jsp";
                form1.submit();
            }
        }
        function logout(){
            javascipt:location.href='userServlet?action=logout&url=index.jsp';
        }

    </script>
</head>
<body>
<div id="container">

    <div id="header">
        <ul>
            <li><span><a href="首页.html" onClick="">加入收藏</a></span></li>
            <li><span><a href="首页.html">设为首页</a></span></li>
        </ul>
    </div>
    <div id="nav">
        <ul>
            <a target="_top" href="index.jsp"><li>首页</li></a>
            <a target="_top" href="Module_practice/findTeacher.jsp"><li>勤工助学</li></a>
            <a target="_top" href="Module_fit/fit.jsp"><li>体育健身</li></a>
            <a target="_top" href="Module_community/community.jsp"><li>团委社团</li></a>
            <a target="_top" href="Module_learn/xssh.jsp"><li>学术生活</li></a>
            <a target="_top" href="Module_competition/competition.jsp"><li>科研竞赛</li></a>
            <a target="_top" href="Module_resource/resource.jsp"><li>资源发布</li></a>
            <a target="_top" href="Module_outdoor/outdoor.jsp"><li>户外交友</li></a>
        </ul>
    </div>
    <!--悬挂图片-->
    <div id="picture"></div>
    <!--登录窗口-->
    <div id="signIn">
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
            <input type="button" class="button" value="注册" onclick="javascipt:location.href='register/register.jsp'"/>
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
            <input type="button" class="button" value="注册" onclick="javascipt:location.href='register/register.jsp'"/>
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
    <!--下面是左中右三个框-->
    <br>
    <div id="bigDiv">
        <div id="leftDiv">
            <div id="leftDiv1">
                <h3 class="headline"><span>最新公告</span></h3>
                <hr />
                <ul>
                    <%--<%--%>
                        <%--List<News> lD1= (List<News>) request.getAttribute("lD1");--%>
                        <%--for(News n:lD1){--%>
                    <%--%>--%>
                    <%--<li><span><a class="link" href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>--%>
                 <%--<%--%>
                     <%--}--%>
                 <%--%>--%>
                    <li><span><a class="link" href="news/new1.html">关于组织2016～2017学年第二学期学生选课工作通知</a></span></li>
                        <li><span><a class="link" href="news/new2.html">关于教务系统及BB</a></span></li>
                        <li><span><a class="link" href="news/new3.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于组织2016～2017</a></span></li>


                </ul>
            </div>
            <br/>
            <div id="leftDiv2">
                <h3 class="headline"><span>社团资讯</span></h3>
                <hr />
                <ul>
                    <%--<%--%>
                        <%--List<News> lD2= (List<News>) request.getAttribute("lD2");--%>
                        <%--for(News n:lD2){--%>
                    <%--%>--%>
                    <%--<li><span><a class="link" href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>--%>
                    <%--<%--%>
                        <%--}--%>
                    <%--%>--%>
                        <li><span><a class="link" href="news/new4.html">东大浑南校区图书馆正事试营业</a></span></li>
                        <li><span><a class="link" href="news/new4.html">浑南校区武术协会近期将进行领导班子的换届</a></span></li>
                        <li><span><a class="link" href="news/new4.html">关于软件学院建院15周年活动征集</a></span></li>


                </ul>
            </div>
        </div>
        <div id="centerDiv">
            <div id="centerDiv1">
                <h1><span class="bigLetter">S</span><span class="centerTitle">社团活动</span></h1>
                <ul>
                    <%--<%--%>
                        <%--List<News> cD1= (List<News>) request.getAttribute("cD1");--%>
                        <%--for(News n:cD1){--%>
                    <%--%>--%>
                    <%--<li><span><a class="link" href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>--%>
                    <%--<%--%>
                        <%--}--%>
                    <%--%>--%>
                        <li><span><a class="link" href="news/new1.html">英语晨读</a></span></li>
                        <li><span><a class="link" href="news/new2.html">晚间轮滑</a></span></li>
                        <li><span><a class="link" href="news/new3.html">第二十六届软件学院辩论赛</a></span></li>

                </ul>
            </div>
            <br/>
            <div id="centerDiv2">
                <h1><span class="bigLetter">K</span><span class="centerTitle">科技竞赛</span></h1>
                <ul>
                    <%--<%--%>
                        <%--List<News> cD2= (List<News>) request.getAttribute("cD2");--%>
                        <%--for(News n:cD2){--%>
                    <%--%>--%>
                    <%--<li><span><a class="link" href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>--%>
                    <%--<%--%>
                        <%--}--%>
                    <%--%>--%>
                        <li><span><a class="link" href="news/new1.html">华为软件开发大赛</a></span></li>
                        <li><span><a class="link" href="news/new2.html">ACM竞赛相关事宜</a></span></li>
                        <li><span><a class="link" href="news/new3.html">蓝桥杯报名事宜</a></span></li>

                </ul>
            </div>
            <br/>
            <div id="centerDiv3">
                <h1><span class="bigLetter">Z</span><span class="centerTitle">资源下载</span></h1>
                <ul>
                    <%--<%--%>
                        <%--List<News> cD3= (List<News>) request.getAttribute("cD3");--%>
                        <%--for(News n:cD3){--%>
                    <%--%>--%>
                    <%--<li><span><a class="link" href="news/<%=n.getSrc()%>"><%=n.getTitle()%></a></span></li>--%>
                    <%--<%--%>
                        <%--}--%>
                    <%--%>--%>
                        <li><span><a class="link" href="news/new1.html">[汉语字幕]你的名字</a></span></li>
                        <li><span><a class="link" href="news/new2.html">无间道</a></span></li>
                        <li><span><a class="link" href="news/new3.html">高数试题</a></span></li>

                </ul>
            </div>
        </div>
        <div id="rightDiv">
            <h3 class="headline"><span>失物招领</span></h3>
                <hr />
            <ul>
            	<li><img src="img/bottle.jpg" height="150" width="150"><br><span><a class="link" href="news">青色水瓶</a></span></li>
            	<li><img src="img/timg.jpeg" height="150" width="150"><br><span><a class="link" href="news">白色斯沃琪手表</a></span></li>
                <br>
                <br>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>更多>></a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
