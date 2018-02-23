<%@ page import="bean.User" %><%--
  Created by IntelliJ IDEA.
  User: jay chen
  Date: 2016/9/12
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="../css/nav_new.css" type="text/css"/>
    <link rel="stylesheet" href="../css/register.css" type="text/css"/>
    <script language="JavaScript">
        function register() {
            if (form1.id.value==""){
                alert("请输入学号");
                form1.id.focus();
                return;
            }else if(form1.name.value==""){
                alert("请输入用户名");
                form1.name.focus();
                return;
            }else if(form1.pwd.value==""){
                alert("请输入密码");
                form1.pwd.focus();
                return;
            }else if(form1.gender.value==""){
                alert("请选择性别");
                form1.gender.focus();
                return;
            }else if(form1.age.value==""){
                alert("请输入年龄");
                form1.age.focus();
                return;
            }else if(form1.university.value==""){
                alert("请输入学校");
                form1.university.focus();
                return;
            }else if(form1.college.value==""){
                alert("请输入学院");
                form1.college.focus();
                return;
            }else if(form1.major.value==""){
                alert("请输入专业");
                form1.major.focus();
                return;
            }else if(form1.email.value==""){
                alert("请输入邮箱");
                form1.email.focus();
                return;
            }
            form1.action="../userServlet?action=register";
            form1.submit();

        }
    </script>
</head>
<body>
<div id="container">

    <div id="header">
        <ul>
            <li><span ><a href="首页.html">加入收藏</a></span></li>
            <li><span><a href="首页.html">设为首页</a></span></li>

        </ul>
    </div>
    <div id="nav">

           <!-- <li onmouseover="this.style.background='#f00'" onmouseout="this.style.background='#000'"><span><a
                    href="首页.html">首页</a></span></li>-->
            <ul>
                <a target="_top" href="../index.jsp"><li>首页</li></a>
                <a target="_top" href="../Module_practice/findTeacher.jsp"><li>勤工助学</li></a>
                <a target="_top" href="../Module_fit/fit.jsp"><li>体育健身</li></a>
                <a target="_top" href="../Module_community/community.jsp"><li>团委社团</li></a>
                <a target="_top" href="首页.html"><li>学术生活</li></a>
                <a target="_top" href="../Module_competition/competition.jsp"><li>科研竞赛</li></a>
                <a target="_top" href="../Module_resource/resource.jsp"><li>资源发布</li></a>
                <a target="_top" href="../Module_outdoor/outdoor.jsp"><li>户外交友</li></a>
            </ul>

    </div>
    <!--悬挂图片-->
    <div id="picture"></div>


    <!--登录窗口-->
    <div id="signIn">
        <%
            User u=(User)request.getSession().getAttribute("user");
            String error= (String) request.getAttribute("error");
            String id=(String)request.getAttribute("id");
            if(u==null&&error==null){
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
        }else if(error!=null&&error.equals("pwd")){
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
        }else{
        %>
        <span class="welcome">你好，<%=u.getName()%></span>
        <span class="person"> 访问人数:<%=application.getAttribute("count")%></span>
        <%
            }
        %>
    </div>
    <!--下面是左中右三个框-->
    <div id="bigDiv">
        <div id="rightDiv">
            <h3>注册</h3>
            <hr />
            <div id="register">
                <form name="form1" action="" method="post">
                	<div class="line">
                      <label>学号: </label> 
                      <input class="rInput" type="text" name="id"/>
                  </div>
                  <div class="line">
                      <label>姓名: </label> 
                      <input class="rInput" type="text" name="name"/>
                  </div>  
                  <div class="line">
                      <label>密码: </label>
                      <input class="rInput" type="password" name="pwd"/>
                  </div>  
                  <div class="line">
                      <div style="margin-bottom:20px">
                        <label>性别: </label>
                        <input type="radio" name="gender" value="boy"/>男
                        <input type="radio" name="gender" value="girl"/>女
                      </div>
                  </div>  
                  <div class="line">
                      <label>年龄: </label>
                      <input class="rInput" type="text" name="age">
                  </div>  
                  <div class="line">
                      <label>学校: </label>
                      <input class="rInput" type="text" name="university"/>
                  </div>  
                  <div class="line">
                      <label>学院:</label>
                      <input class="rInput" type="text" name="college">
                  </div>  
                  <div class="line">
                      <label>专业: </label>
                      <input class="rInput" type="text" name="major"/>
                  </div>  
                  <div class="line">
                      <label>年级:</label>
                      <input class="rInput" type="text" name="grade"/>
                  </div>  
                  <div class="line">
                      <label>邮箱: </label>
                      <input class="rInput" type="text" name="email">
                  </div>  
                  
                  <div class="line">
                  	  <input type="button" value="注册" class="rButton" onclick="register()">
                  </div>
                  
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
