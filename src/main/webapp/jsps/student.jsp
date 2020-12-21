<%--
  Created by IntelliJ IDEA.
  User: 84005
  Date: 2020/12/4
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>学生信息管理</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div style="width: 200px;height: 100%">
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper"
         role="navigation" style="width: 100%">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand"> <a href="#"> 在线学习查重系统 </a> </li>
            <li> <a href="#"> <i class="fa fa-fw fa-home"> </i> 学生信息管理 </a> </li>
            <li> <a href="#"> <i class="fa fa-fw fa-folder"> </i> 班级学习信息统计 </a> </li>
            <li> <a href="#"> <i class="fa fa-fw fa-file-o"> </i> 个人学习信息统计 </a> </li>
            <li> <a href="#"> <i class="fa fa-fw fa-cog"> </i> 在线提交作业 </a> </li>
            <li> <a href="#"> <i class="fa fa-fw fa-twitter"> </i> 代码查重 </a> </li>
        </ul>
    </nav>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"/>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"/>
<script>
    $(document).ready(function() {
        var trigger = $('.hamburger'),
            overlay = $('.overlay'),
            isClosed = false;
        trigger.click(function() {
            hamburger_cross();
        });
        function hamburger_cross() {
            if (isClosed == true) {
                overlay.hide();
                trigger.removeClass('is-open');
                trigger.addClass('is-closed');
                isClosed = false;
            } else {
                overlay.show();
                trigger.removeClass('is-closed');
                trigger.addClass('is-open');
                isClosed = true;
            }
        }
        $('[data-toggle="offcanvas"]').click(function() {
            $('#wrapper').toggleClass('toggled');
        });
    });
</script>
</html>
