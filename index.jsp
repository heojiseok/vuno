<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@include file="loginCheck.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>대리점별 데모 계정 리스트</title>

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

String sql = "select * from demo where idx=?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, request.getParameter("idx"));

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
          <li class="nav-item">
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

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('css/img/메인2.JPG')">
          <div class="carousel-caption d-none d-md-block">

            <p></p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('css/img/메인1.jpg')">
          <div class="carousel-caption d-none d-md-block">

          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('css/img/메인3.jpg')">
          <div class="carousel-caption d-none d-md-block">

          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container">
    <br>

    <div class="row">
        <div class="col-lg-6">
            <h2>VUNO(BoneAge)는 이렇습니다!</h2>
            <ul>
                <li><a href="https://ubpacs.com/index/view/134564" >동영상메뉴얼</a></li>
                <li><a href="영업계획서.pdf">영업계획서</a></li>
            </ul>
            <p> - 기존에 선생님들 알고 계시는 골연령(BonAge) 촬영입니다. 수골(Hand)를 촬영하여 뼈나이를 측정하는 겁니다.</p>
            <p> - 이전에는 수골을 촬영하여, 뼈와 뼈사이의 관절을 계산법에 의해 계산했는데 1장당 평균 5-10분 소요 되었습니다</p>
            <p> - 해당 계산법이 계산하시는 선생님마다 주관적인 관점에서 측정되어 표준화가 되지 않는 부분이 많았으나, AI를 통해 데이터로 수치화하여 평균치로 측정이 가능한 부분입니다.</p>
        </div>
        <div class="col-lg-6">
            <img class="img-fluid rounded" src="css/img/메인4.JPG" alt="">
        </div>
    </div>
    <br>


  </div>
  
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">@ 2021 UBcare Co., Ltd. All rights reserved.</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>