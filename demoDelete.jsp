<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="loginCheck.jsp" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <%

    Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("delete from demo "); 
    SQL.append("where idx = ?");
    
	String idx = request.getParameter("idx");

	String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String dbURL = "jdbc:sqlserver://192.168.40.1:1433;databaseName=VUNO";


    try {
		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");
 //       pstmt = con.prepareStatement(sql);
 //       pstmt.executeUpdate();

        pstmt = con.prepareStatement(SQL.toString());
        pstmt.setString(1, idx);

        int rowCount = pstmt.executeUpdate();        

        stmt = con.createStatement();

    }
    catch(Exception e) {
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
	
%>
<script>
    alert("게시물이 삭제되었습니다.");
    location.href="demo.jsp";
</script>
  
</body>

</html>