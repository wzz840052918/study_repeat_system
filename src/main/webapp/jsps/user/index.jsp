
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
          rel="stylesheet">
    <!-- JQVMap -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="${pageContext.request.contextPath}/jsps/vendors/bootstrap-daterangepicker/daterangepicker.css"
          rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath}/jsps/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="${pageContext.request.contextPath}/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/student/getAllStudentInformation">学生信息管理</a></li>
                      <li><a href="${pageContext.request.contextPath}/personal/getAllPersonalInformation">个人学习信息统计</a></li>
                      <li><a href="${pageContext.request.contextPath}/tclass/getAllTclassInformation">班级学习信息统计</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/jsps/user/form.jsp">代码查重</a></li>
                      <li><a href="${pageContext.request.contextPath}/jsps/user/form_advanced.jsp">在线提交作业</a></li>
                    </ul>
                  </li>

                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">John Doe
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item"  href="javascript:;"> Profile</a>
                      <a class="dropdown-item"  href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                  <a class="dropdown-item"  href="javascript:;">Help</a>
                    <a class="dropdown-item"  href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </div>
                </li>

                <li role="presentation" class="nav-item dropdown open">
                  <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <div class="text-center">
                        <a class="dropdown-item">
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>学生信息管理
                  <small>edit user</small>
                </h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5   form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
                  </div>
                </div>
              </div>
            </div>


            <div class="clearfix"></div>

            <div class="col-md-12 col-sm-12  ">
              <div class="x_panel">
                <div class="x_title">
                  <h2>修改学生信息
                    <small>edit user</small>
                  </h2>
                  <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                  <button type="button" class="btn btn-round btn-success" onclick="addStudent()">添加学生信息</button>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                         aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Settings 1</a>
                        <a class="dropdown-item" href="#">Settings 2</a>
                      </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>

                <div class="x_content">


                  <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action">
                      <thead>
                      <tr class="headings">
                        <th>
                          <input type="checkbox" id="check-all" class="flat">
                        </th>
                        <th class="column-title">学号</th>
                        <th class="column-title">姓名</th>
                        <th class="column-title">性别</th>
                        <th class="column-title">所在院校</th>
                        <th class="column-title">行政班级</th>
                        <th class="column-title">手机号</th>
                        <th class="column-title no-link last"><span class="nobr">操作</span></th>
                        <th class="bulk-actions" colspan="7">
                          <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span
                                  class="action-cnt"> </span> )
                            <i class="fa fa-chevron-down"></i></a>
                          <button type="button" class="btn btn-round btn-success" onclick="deleteThis()">批量删除</button>
                        </th>

                      </tr>
                      </thead>
                      <c:set var="index" value="0" scope="page"/>
                      <tbody>
                      <c:forEach items="${studentList}" var="student">
                        <c:choose>
                          <c:when test="${index == 0}">
                            <tr class="even pointer">
                              <td class="a-center ">
                                <input type="checkbox" class="flat" name="table_records" value="${student.sid}">
                              </td>
                              <td class=" ">${student.sid}</td>
                              <td class=" ">${student.sname} </td>
                              <td class=" ">${student.ssex} </td>
                              <td class=" ">${student.colleage}</td>
                              <td class=" ">${student.sclass}</td>
                              <td class=" ">${student.phone}</td>
                              <td class=" last"><a
                                      href="${pageContext.request.contextPath}/student/editStudentInformation?sid=${student.sid}">修改</a>&nbsp;|&nbsp;
                                <a onclick="shanchu(${student.sid})">删除</a>
                              </td>
                            </tr>
                            <c:set var="index" value="1" scope="page"/>
                          </c:when>
                          <c:otherwise>
                            <tr class="odd pointer">
                              <td class="a-center ">
                                <input type="checkbox" class="flat" value="${student.sid}"
                                       name="table_records">
                              </td>
                              <td class=" ">${student.sid}</td>
                              <td class=" ">${student.sname} </td>
                              <td class=" ">${student.ssex} </td>
                              <td class=" ">${student.colleage}</td>
                              <td class=" ">${student.sclass}</td>
                              <td class=" ">${student.phone}</td>
                              <td class=" last"><a
                                      href="${pageContext.request.contextPath}/student/editStudentInformation?sid=${student.sid}">修改</a>&nbsp;|&nbsp;
                                <a onclick="shanchu(${student.sid})">删除</a>
                              </td>
                            </tr>
                            <c:set var="index" value="0" scope="page"/>
                          </c:otherwise>
                        </c:choose>
                      </c:forEach>


                      </tbody>
                    </table>

                    <button class="btn btn-primary btn-lg" hidden id="ModalButton" data-toggle="modal" data-target="#myModal">开始演示模态框</button>
                    <%--模态框--%>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">信息 <small>Message</small></h4>
                          </div>
                          <div class="modal-body">${msg}</div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" onclick="hrefindex()">确认</button>
                          </div>
                        </div><!-- /.modal-content -->
                      </div><!-- /.modal -->
                    </div>
                  </div>


                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
    <script>
        var oid = document.getElementsByName("table_records")//获取所有复选框

        function deleteThis() {
            if (confirm('确定要删除这些数据吗？')) {
                var size = document.getElementsByName('table_records').length
                var array1 = ""
                var flag = 1
                for (var i = 0; i < size; i++) {
                    if (flag == 1 && oid[i].checked == true) {
                        array1 += "array1=" + oid[i].value
                        flag = 0
                    } else if (i != 0 && oid[i].checked == true) {
                        array1 += "&array1=" + oid[i].value
                    }

                }

                window.location.href = '${pageContext.request.contextPath}/student/deleteStudentInformation?' + array1
            }
        }
        function addStudent() {
            window.location.href = '${pageContext.request.contextPath}/student/aboutInformation?index=1'
        }
        function shanchu(sid) {
            if(confirm("是否要删除？")){
                console.log('sid='+sid)
                window.location.href = '${pageContext.request.contextPath}/student/deleteStudentInformation?sid='+sid
            }
        }
    </script>
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/Flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/Flot/jquery.flot.time.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="${pageContext.request.contextPath}/jsps/vendors/moment/min/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath}/jsps/build/js/custom.min.js"></script>

  </body>
</html>
