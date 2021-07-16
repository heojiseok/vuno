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
    StringBuffer SQL = new StringBuffer("update demo set 고객번호=?, 상호명=?, 고객명=?, 담당대리점=?, 담당자명=?, 사용여부=?, PACS=?, EMR=? where idx = ?");
  

    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String dbURL = "jdbc:sqlserver://192.168.40.1:1433;databaseName=VUNO";
	
	try {
      
        
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");
 //       pstmt = con.prepareStatement(sql);
 //       pstmt.executeUpdate();

        pstmt = con.prepareStatement(SQL.toString());
        pstmt.setString(1, request.getParameter("고객번호"));
        pstmt.setString(2, request.getParameter("상호명"));
        pstmt.setString(3, request.getParameter("고객명"));
        pstmt.setString(4, request.getParameter("담당대리점"));
        pstmt.setString(5, request.getParameter("담당자명"));
        pstmt.setString(6, request.getParameter("사용여부"));
        pstmt.setString(7, request.getParameter("PACS"));
        pstmt.setString(8, request.getParameter("EMR"));
        pstmt.setString(9, request.getParameter("idx"));


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

    alert("수정 되었습니다.");

    location.href="demo.jsp";

</script> 
</body>
</html>