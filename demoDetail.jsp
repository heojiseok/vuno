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
    Statement stmt1 = null;
    ResultSet result1 = null;


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

    stmt1 = con.createStatement();
    String sql3 = "select * from [VUNO].[dbo].[user] where user_id='UBCARE'";
    result1 = stmt1.executeQuery(sql3);



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

            <div>
                <form action="search.jsp" method="post"  name="search">
                  <input type="text" name="word" placeholder="검색어 입력" style=" font-size: 15px;
          width: 325px;
          padding: 7px;
          border:1px solid #1b5ac2;
          outline: none;
          float: left;;">
                  <% while (rs.next()) { %>
                  <button class="btn btn-primary">검색</button>
             
                <% while (result1.next()) { 
     
                        if(session.getAttribute("user_id").equals(result1.getString("user_id"))) {%>
                            <button type="button" class="btn btn-primary" id="Post" onclick="location.href='post.jsp'"
                                style="float: right;">추가</button>
                                <button type="button" class="btn btn-primary" id="Post" style="float: right; margin-right: 10px;" onclick="location.href='demoDelete.jsp?idx=<%=rs.getString("idx") %>'">삭제</button>
                    
                                
                                <% }
                            
                    } %>

            </form>
            </div>



            <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
            </head>

            <body>
        </div>
    </div>

    <table style="width: 1500px; margin:auto; margin-top: 1rem;" cellspacing='0'>



        <!-- cellspacing='0' is important, must stay -->

        <!-- Table Header -->
        <thead>
            <tr>
                <th>No.</th>
                <th>기관명</th>
                <th>고객번호</th>
                <th>데모 ID</th>
                <th>데모 PW</th>
                <th>상호명</th>
                <th>고객명</th>
                <th>크레딧</th>
                <th>담당대리점</th>
                <th>담당자명</th>
                <th>사용여부</th>
                <th>PACS</th>
                <th>EMR</th>
            </tr>
        </thead>
        <!-- Table Header -->

        <!-- Table Body -->


        <tbody>
            <form  method="POST" action="demoDetail-pro.jsp?idx=<%=rs.getString("idx") %>" novalidate>
               
                    <tr>
                        <td><%=rs.getString("idx")%></td>
                        <td>
                            <%=rs.getString("기관명")%></a>
                        </td>
                        <td>
                            <input type="text" name="고객번호" placeholder="고객번호" style="width: 60px; text-align: center;">
                        </td>

                        <td>
                            <%=rs.getString("데모ID")%>
                        </td>
                        <td>
                            <%=rs.getString("데모PW")%>
                        </td>
                        <td>
                            <input type="text" name="상호명" placeholder="상호명" style="width: 120px; text-align: center;">
                        </td>
                        <td>
                            <input type="text" name="고객명" placeholder="고객명" style="width: 60px; text-align: center;">
                        </td>
                        <td>
                            <%=rs.getString("크레딧")%>
                        </td>
                        <td>
                    
                                <input type="text" name="담당대리점"  style="width: 100px; text-align: center;" value="<%=result.getString("담당대리점")%>">
                   
                        </td>
                     
                        
                        <td>
                            <input type="text" name="담당자명" placeholder="담당자명" style="width: 60px; text-align: center;">
                        </td>
                        <td><input type="text" name="사용여부" placeholder="사용여부" style="width: 60px; text-align: center;"></td>
                        <td><Select name="PACS" onChange="getSelectValue(this.form);">
                                        <Option Value="-"> -</Option>
                                        <Option Value="UBPACS-Z(유비케어)"> UBPACS-Z </Option>
                                        <Option Value="후지(신기사)"> 후지(신기사) </Option>
                                        <Option Value="IVIEW(캐드임펙트)"> IVIEW(캐드임펙트) </Option>
                                        <Option Value="VIEWREX(테크하임)"> VIEWREX(테크하임) </Option>
                                        <Option Value="PACSPLUS(MS)"> PACSPLUS(MS) </Option>
                                        <Option Value="제타팍스(태영)"> 제타팍스(태영) </Option>
                                        <Option Value="HiPACS(HK)"> HiPACS(HK) </Option>
                                        <Option Value="ZeroPACS(디메디)"> ZeroPACS(디메디) </Option>
                                        <Option Value="Ariviwe(태영)"> Ariviwe(태영) </Option>
                                        <Option Value="INFINITT(인피)"> INFINITT(인피) </Option>
                                        <Option Value="기타"> 기타 </Option>
                                        <Option Value="사용안함"> 사용안함 </Option>
                            </Select></td>
                        <td><Select name="EMR" onChange="getSelectValue(this.form);">
                                            <Option Value="-"> -</Option>
                                            <Option Value="유비케어"> 의사랑 </Option>
                                            <Option Value="네오소프트"> 네오소프트 </Option>
                                            <Option Value="포인트닉스"> 포인트닉스 </Option>
                                            <Option Value="금우뱅킹"> 금우뱅킹 </Option>
                                            <Option Value="병원과컴퓨터"> 병원과컴퓨터 </Option>
                                            <Option Value="비트컴퓨터"> 비트컴퓨터 </Option>
                                            <Option Value="클릭소프트"> 클릭소프트 </Option>
                                            <Option Value="브레인소프트"> 브레인소프트 </Option>
                                            <Option Value="이지스헬스케어"> 이지스헬스케어 </Option>
                                            <Option Value="티엔에이치주식회사"> 티엔에이치주식회사 </Option>
                                            <Option Value="기타"> 기타 </Option>

                            </Select></td>
                            
                    </tr>
                    
                 
                        <!-- Table Row -->

        </tbody>

        <!-- Table Body -->
    </table>


    <ul>
        <div class="container">


            <div class="container">
                <div id="success"></div>
                <!-- For success/fail messages -->
                <br>
                
                <button type="submit" class="btn btn-primary" id="post"  style="float: right;">저장</button>
    
               
                <% }
     
        } %>
                <br>
                <br>
                      
                </form>                
                
            </div>
        </div>
        </div>
    </ul>
    




    <!-- Footer -->
    </div>
    </div>
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">@ 2021 UBcare Co., Ltd. All rights reserved.</p>
        </div>
        <!-- /.container -->
    </footer>


</body>

</html>