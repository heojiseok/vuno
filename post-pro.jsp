<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>대리점별 데모 계정 리스트</title>

</head>
<body>

	<%
	Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("insert into demo(기관명, 데모ID, 데모PW, 크레딧, 사용여부) "); 
    SQL.append("values (?, ?, ?, ?, ?)");

    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String dbURL = "jdbc:sqlserver://192.168.40.1:1433;databaseName=VUNO";
	
	try {
      
        
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");
 //       pstmt = con.prepareStatement(sql);
 //       pstmt.executeUpdate();

        pstmt = con.prepareStatement(SQL.toString());
        pstmt.setString(1, request.getParameter("기관명"));
        pstmt.setString(2, request.getParameter("데모ID"));
        pstmt.setString(3, request.getParameter("데모PW"));
        pstmt.setString(4, request.getParameter("크레딧"));
        pstmt.setString(5, request.getParameter("사용여부"));


        int rowCount = pstmt.executeUpdate();        
        
        stmt = con.createStatement();

    }
    catch(Exception e) {
    	out.println("MsSql 데이터베이스 VunoDB의 demo 조회에 문제가 있습니다. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }

%> 
<script>

    alert("등록 되었습니다.");

    location.href="demo.jsp";

</script> 
</body>
</html>