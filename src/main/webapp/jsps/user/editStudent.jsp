
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
                <c:if test="${index == 1}">
                  <h3>学生信息管理
                    <small>edit user</small>
                  </h3>
                </c:if>
                <c:if test="${index == 2}">
                  <h3>个人学习信息统计
                    <small>edit personal</small>
                  </h3>
                </c:if>
                <c:if test="${index == 3}">
                  <h3>班级学习信息统计
                    <small>edit publicClass</small>
                  </h3>
                </c:if>
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
                      <c:if test="${index == 1}">
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/student/editStudentInformation" method="post">

                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">学 号 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="first-name"  required="required" class="form-control " value="${student.sid}" disabled>
                              <input type="text" name="sid" value="${student.sid}" hidden/>
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">姓 名 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="sname" required="required" class="form-control" value="${student.sname}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">性 别</label>
                            <div class="col-md-6 col-sm-6">
                              <div id="gender" class="btn-group" data-toggle="buttons">
                                <label onclick="nan()" class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input id="nan" type="radio" name="gender" value="男" class="join-btn">&nbsp; 男 &nbsp;
                                </label>
                                <label onclick="nv()" class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input id="nv" type="radio" name="gender" value="女" class="join-btn" > 女
                                </label>
                              </div>
                            </div>
                          </div>
                          <div class="item form-group">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">所属学院</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="colleage" value="${student.colleage}">
                            </div>
                          </div>
                          <div class="item form-group">
                          <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">行政班级</label>
                          <div class="col-md-6 col-sm-6 ">
                            <input id="middle-name" class="form-control" type="text" name="sclass" value="${student.sclass}">
                          </div>
                        </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">手机号</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="phone" value="${student.phone}">
                            </div>
                          </div>
                          <div class="ln_solid"></div>
                          <div class="item form-group">
                            <div class="col-md-6 col-sm-6 offset-md-3">
                              <button class="btn btn-primary" type="button">取消</button>
                              <button class="btn btn-primary" type="reset">重置</button>
                              <button type="submit" class="btn btn-success">提交</button>
                            </div>
                          </div>

                        </form>
                      </c:if>
                      <c:if test="${index == 2}">
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/personal/edit1" method="post">
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">学 号 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="first-name" name="sid" required="required" class="form-control" value="${personal.sid}"  >
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">姓 名 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="sname" required="required" class="form-control" value="${personal.sname}"  >
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">性 别</label>
                            <div class="col-md-6 col-sm-6">
                              <select name="ssex">
                                <option value="男" selected>男</option>
                                <option value="女">女</option>
                              </select>
                            </div>
                          </div>
                          <div class="item form-group">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">行政班级</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="sclass" value="${personal.sclass}" >
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">课程名称</label>
                            <div class="col-md-6 col-sm-6 ">
                              <select name="lname">
                                <c:forEach var="lesson" items="${lessonList}">
                                  <c:choose>
                                    <c:when test="${personal.lname == lesson.lname}">
                                      <option value="${lesson.lname}" selected>${lesson.lname}</option>
                                    </c:when>
                                    <c:otherwise>
                                      <option value="${lesson.lname}">${lesson.lname}</option>
                                    </c:otherwise>
                                  </c:choose>
                                </c:forEach>
                              </select>
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">平时成绩</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="daily_score" value="${personal.daily_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">期末试卷成绩</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="last_score" value="${personal.last_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">总成绩</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="all_score" value="${personal.all_score}">
                            </div>
                          </div>
                          <div class="ln_solid"></div>
                          <div class="item form-group">
                            <div class="col-md-6 col-sm-6 offset-md-3">
                              <button class="btn btn-primary" type="button">取消</button>
                              <button class="btn btn-primary" type="reset">重置</button>
                              <button type="submit" class="btn btn-success">提交</button>
                            </div>
                          </div>
                        </form>

                      </c:if>
                      <%--班级信息统计--%>
                      <c:if test="${index == 3}">
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/tclass/editPublicInformation" method="post">
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">班级编号 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="first-name" name="sid" required="required" class="form-control " value="${publicClass.cid}" disabled>
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">班级名称 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                              <input type="text" id="last-name" name="sname" required="required" class="form-control" value="${publicClass.sclass}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">平时成绩总分</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="colleage" value="${publicClasss.sub_daily_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">平时成绩平均分</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="colleage" value="${publicClasss.ave_daily_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">期末考试总分</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="phone" value="${publicClass.sub_last_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">期末考试平均分</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="phone" value="${publicClass.ave_last_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">总成绩总分</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="phone" value="${publicClass.sub_all_score}">
                            </div>
                          </div>
                          <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">总成绩平均分</label>
                            <div class="col-md-6 col-sm-6 ">
                              <input id="middle-name" class="form-control" type="text" name="phone" value="${publicClass.ave_all_score}">
                            </div>
                          </div>
                          <div class="ln_solid"></div>
                          <div class="item form-group">
                            <div class="col-md-6 col-sm-6 offset-md-3">
                              <button class="btn btn-primary" type="button">取消</button>
                              <button class="btn btn-primary" type="reset">重置</button>
                              <button type="submit" class="btn btn-success">提交</button>
                            </div>
                          </div>

                        </form>
                      </c:if>
                      <button class="btn btn-primary btn-lg" hidden name="ModalButton" data-toggle="modal" data-target="#myModal" id="but">开始演示模态框</button>
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
                      <div><p style="color: #942a25">${msg}</p></div>
                      <h1 style="color: red">${error}</h1>
                    </table>
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
    <input id="msg" value="${msg}" hidden/>
    <input id="index123" value="${index}" hidden/>

    <input id="error" value="${error}" hidden/>
    <script>
      function hrefindex() {
          //跳转到index页面
          var index = document.getElementById('index123').value;
          console.log(index)
          if(index ==1){
              window.location.href='${pageContext.request.contextPath}/student/getAllStudentInformation'
          }else if(index==2){
              window.location.href='${pageContext.request.contextPath}/personal/getAllPersonalInformation'
          }else if(index==3){
              window.location.href='${pageContext.request.contextPath}/tclass/getAllTclassInformation'
          }
      }
      window.onload=function () {
          if(${error==null}){
              var error = '1'
          }else{
              var error = '${error}'
          }
          if(${msg==null}){
              var msg = '2'
          }else{
              var msg = '${msg}'
          }

          if(error!=1){
              confirm('出现错误')
              console.log('出现失败')
          }else if(msg!=2){
              console.log('出现信息')
              document.getElementById('but').click();
          }
      }
      function nan() {
          console.log("nan")
          $("#nan").attr("checked","checked");
          $("#nv").removeAttr("checked");
      }
      function nv() {
          console.log("nv")
          $("#nan").removeAttr("checked");
          $("#nv").attr("checked","checked");
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
