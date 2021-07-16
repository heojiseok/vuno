
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@include file="loginCheck.jsp" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>대리점별 데모 계정 리스트</title>
  <link rel="stylesheet" href="css/board.css">


  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>UBcare</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  </head>
	<%

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    Statement stmt = null;
    ResultSet result = null;

    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    Class.forName(driverName);

    String dbURL = "jdbc:sqlserver://192.168.40.1:1433;databaseName=VUNO";
    con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");

    String sql = "select * from demo ORDER BY idx";
    pstmt = con.prepareStatement(sql);


    rs = pstmt.executeQuery();

    stmt = con.createStatement();
String sql2 = "select * from [user] where user_id='" + user_id + "'";


result = stmt.executeQuery(sql2);

%> 

<body>

  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">UBcare</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <% while (result.next()) { %>
              <a class="nav-link"><%=result.getString("담당대리점")%> 님</a>
              <% } %> 
        </li>   
          <li class="nav-item active">
            <a class="nav-link" href="demo.jsp">Demo</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="policy.jsp">Policy</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" onclick="location.href='logout.jsp'">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">담당 대리점</h1>
    

    <div class="container">
      <ol class="breadcrumb">
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo.jsp">전체보기</a></li>
        </div>
    </ol>

      <ol class="breadcrumb">
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo1.jsp">강남메디패스</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo2.jsp">동원메디텍</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo3.jsp">두리메디컴</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 100px; float: left;">
            <li class="breadcrumb-item active"><a href="demo4.jsp">디라인</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo5.jsp">대호메디케어</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo6.jsp">메디네트</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo7.jsp">메디케어</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 200px; float: left;">
            <li class="breadcrumb-item active"><a href="demo8.jsp">비즈현메디칼</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo9.jsp">세일메디넷</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo10.jsp">제주메디넷</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo11.jsp">에버넷</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 100px; float: left;">
            <li class="breadcrumb-item active"><a href="demo12.jsp">엠메이스</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo13.jsp">이안메드</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo14.jsp">이오넷</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 110px; float: left;">
            <li class="breadcrumb-item active"><a href="demo15.jsp">프로비즈넷</a></li>
        </div>
        <span>•&nbsp;</span>
        <div style="width: 100px; float: left;">
            <li class="breadcrumb-item active"><a href="demo16.jsp">M-NET</a></li>
        </div>


      </ol>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row">
        <div class="col-lg-12 mb-4">
          <form name="sentMessage" action="post-pro.jsp" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>기관명:</label>
                <input type="text" name="기관명" class="form-control" required
                  data-validation-required-message="Please enter Title.">
                <p class="help-block"></p>
              </div>
            </div>


            <div class="control-group form-group">
              <div class="controls">
                <label>데모 계정 ID :</label>
                <input type="text" name="데모ID" class="form-control"  required
                  data-validation-required-message="Please enter itle.">
                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group form-group">
              <div class="controls">
                <label>데모 계정 PW :</label>
                <input type="text" name="데모PW" class="form-control" required
                  data-validation-required-message="Please enter Title.">
                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group form-group">
              <div class="controls">
                <label>크레딧 :</label>
                <input type="text" name="크레딧" class="form-control" required
                  data-validation-required-message="Please enter Title.">
                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group form-group">
              <div class="controls">
                <label>사용여부 :</label>
                <input type="text" name="사용여부" class="form-control" required
                  data-validation-required-message="Please enter Title.">
                <p class="help-block"></p>
              </div>
            </div>

            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary" id="post" style="float: right;">글쓰기</button>
          </form>
        </div>

      </div>
      <!-- /.row -->
    </div>
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">@ 2021 UBcare Co., Ltd. All rights reserved.</p>
    </div>
    <!-- /.container -->
  </footer>


</body>

</html>